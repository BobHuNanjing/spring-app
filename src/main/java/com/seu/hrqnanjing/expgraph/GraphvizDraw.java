package com.seu.hrqnanjing.expgraph;

import guru.nidi.graphviz.attribute.*;
import guru.nidi.graphviz.engine.Format;
import guru.nidi.graphviz.engine.Graphviz;
import guru.nidi.graphviz.model.*;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;

import static guru.nidi.graphviz.model.Factory.*;

public class GraphvizDraw {
    ArrayList<RuleNode> ruleNodeArrayList = null;
    ArrayList<LiteralNode> literalNodeArrayList = null;
    ArrayList<RuleToLiteralEdge> ruleToLiteralEdgeArrayList = null;
    ArrayList<LiteralToRuleEdge> literalToRuleEdgeArrayList = null;
    MutableGraph g;
    ArrayList<MutableNode> mutableNodes = new ArrayList<>();
    ExplanationSpace subSpace = new ExplanationSpace();

    public GraphvizDraw(ExplanationSpace explanationSpace) {
        this.ruleNodeArrayList = explanationSpace.ruleNodeList;
        this.literalNodeArrayList = explanationSpace.literalNodeList;
        this.ruleToLiteralEdgeArrayList = explanationSpace.ruleToLiteralEdgeList;
        this.literalToRuleEdgeArrayList = explanationSpace.literalToRuleEdgeList;
        g = mutGraph().setDirected(true);
    }

    private boolean isIllegal(Node currentNode, HashSet<String> answerSet, HashSet<Node> ancestorList, boolean isNeg) {
        if ((answerSet.contains(currentNode.getNodeElement()) && isNeg) || (!answerSet.contains(currentNode.getNodeElement()) && !isNeg && currentNode instanceof LiteralNode) || (ancestorList.contains(currentNode)))
            return true;
        else
            return false;
    }

    public void drawNode() {
        for (LiteralNode litNode : literalNodeArrayList) {
            MutableNode mutableNode = mutNode(litNode.getNodeElement());
            for (Edge e : litNode.getEdgeList()) {
                MutableNode endNode = mutNode(e.endNode.getNodeElement());
                mutableNode.addLink(to(endNode).add(Arrow.VEE));
            }
            mutableNodes.add(mutableNode);
            g.add(mutableNode);
        }

        for (RuleNode ruleNode : ruleNodeArrayList) {
            MutableNode mutableNode = mutNode(ruleNode.getNodeElement()).add(Shape.RECTANGLE);
            for (Edge e : ruleNode.getEdgeList()) {
                MutableNode endNode = mutNode(e.endNode.getNodeElement());
                mutableNode.addLink(to(endNode).add(Label.of(e.getEdgeElement())).add(Arrow.VEE));
            }
            mutableNodes.add(mutableNode);
            g.add(mutableNode);
        }
    }

    public void displayGraph(String filename) {
        try {
            Graphviz.fromGraph(g).scale(0.1).render(Format.SVG).toFile(new File(filename));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public ExplanationSpace getSubgraph(){
        return this.subSpace;
    }

    public boolean subgraphMatch(ExplanationSpace graph, HashSet<String> answerSet, Node currentNode, HashSet<Node> ancestorList, boolean isNeg){
        //首先判断当前节点是lit还是rule
        //若为LiteralNode
        boolean added = false;
        if(currentNode instanceof LiteralNode) {
            //判断是否为不合理的情况：负体部在回答集中；正体部不在回答集中。
            if ((isNeg && answerSet.contains(currentNode.getNodeElement())) || (!isNeg && !answerSet.contains(currentNode.getNodeElement()))) {
                added = false;
            } else {
                added = true;
                LiteralNode subgraphNode = new LiteralNode(currentNode.getNodeElement());
                subSpace.addNodeByType(subgraphNode);
                for (Edge e : currentNode.getEdgeList()) {
                    if(subgraphMatch(graph, answerSet, e.endNode, ancestorList, false)){
                        subgraphNode.setEdgeList(new LiteralToRuleEdge(subgraphNode, new RuleNode(((RuleNode)e.endNode).getRule())));
                    }
                }

            }
        }

        if(currentNode instanceof RuleNode){
            for (Edge e : currentNode.getEdgeList()) {
                if(subgraphMatch(graph,answerSet,e.endNode,ancestorList,!((RuleToLiteralEdge)e).getDependency())){
                    System.out.println(e.endNode.getNodeElement());
                    LiteralNode subgraphNode = new LiteralNode(e.endNode.getNodeElement());
                    RuleNode ruleNode = new RuleNode(((RuleNode) currentNode).getRule());
                    RuleToLiteralEdge ruleToLiteralEdge = new RuleToLiteralEdge(ruleNode,subgraphNode,((RuleToLiteralEdge)e).getDependency());
                    ruleNode.setEdgeList(ruleToLiteralEdge);
                    subSpace.addNodeByType(subgraphNode);
                    subSpace.addNodeByType(ruleNode);
                    added = true;
                }else{
                    added = false;
                }

            }
        }
        return added;
    }

}
