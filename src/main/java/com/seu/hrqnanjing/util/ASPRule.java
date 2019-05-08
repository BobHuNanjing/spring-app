package com.seu.hrqnanjing.util;

import java.util.HashMap;
import java.util.HashSet;

public class ASPRule {
    HashSet<String> ruleHead = null;
    HashSet<String> rulePosBody = null;
    HashSet<String> ruleNegBody = null;

    public ASPRule(HashMap<String, HashSet<String>> ruleList) {
        this.ruleHead = ruleList.get("head");
        this.rulePosBody = ruleList.get("pBody");
        this.ruleNegBody = ruleList.get("nBody");
    }

    public HashSet<String> getRuleHead() {
        return ruleHead;
    }

    public HashSet<String> getRulePosBody() {
        return rulePosBody;
    }

    public HashSet<String> getRuleNegBody() {
        return ruleNegBody;
    }
}
