package com.seu.hrqnanjing.expgraph;

import com.fasterxml.jackson.annotation.JsonIgnore;

public class RuleNode extends Node{
    Rule rule;

    public Rule getRule() {
        return rule;
    }


    public RuleNode(Rule r) {
        RuleLoader ruleLoader = new RuleLoader("rules.txt");
        ruleLoader.loadRulesIntoList();
        this.rule = r;
    }

    @Override
    @JsonIgnore
    public String getNodeElement() {
        if(rule.getNegativeBody().size()==0 && rule.getPositiveBody().size()==0){
            return "事实："+rule.getHead().toString();
        }
        String ruleNodeElement = "结论:";
        ruleNodeElement += rule.getHead().toString()+"\n";
        ruleNodeElement += "支持证据:";
        ruleNodeElement += rule.getPositiveBody().toString()+"\n";

        ruleNodeElement += "非支持证据:";
        ruleNodeElement += rule.getNegativeBody().toString()+"\n";

        return ruleNodeElement;
    }

}
