package com.seu.hrqnanjing.util;

import java.util.HashMap;

public class ASPRuleDemo {
    String ruleHead = null;
    String rulePosBody = null;
    String ruleNegBody = null;
    int ruleID = -1;

    public ASPRuleDemo(HashMap<String, String> rule) {
        this.ruleHead = rule.get("head");
        this.rulePosBody = rule.get("pBody");
        this.ruleNegBody = rule.get("nBody");
    }

    public String getRuleHead() {
        return ruleHead;
    }

    public String getRulePosBody() {
        return rulePosBody;
    }

    public String getRuleNegBody() {
        return ruleNegBody;
    }

    public void setRuleID(int id){
        this.ruleID = id;
    }

    public int getRuleID() {
        return ruleID;
    }
}
