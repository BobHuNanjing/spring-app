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
        String ruleNodeElement = "结论:[";
        for (String headLit : rule.getHead()) {
            ruleNodeElement = ruleNodeElement + headLit + ",";
        }
        ruleNodeElement = ruleNodeElement.substring(0,ruleNodeElement.length()-1) + "]\n";

        ruleNodeElement += "支持证据:[";
        for (String posLit : rule.getPositiveBody()) {
            ruleNodeElement = ruleNodeElement + posLit + ",";
        }
        ruleNodeElement = ruleNodeElement.substring(0,ruleNodeElement.length()-1) + "]\n";

        ruleNodeElement += "非支持证据:[";
        for (String negLit : rule.getNegativeBody()) {
            ruleNodeElement = ruleNodeElement + negLit + ",";
        }

        ruleNodeElement = ruleNodeElement.substring(0,ruleNodeElement.length()-1) + "]";

        return ruleNodeElement;
    }

}
