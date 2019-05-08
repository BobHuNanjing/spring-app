package com.seu.hrqnanjing.database;

import com.seu.hrqnanjing.util.ASPRule;
import com.seu.hrqnanjing.util.ASPRuleDemo;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Repository
public class RuleDataBase {
    List<ASPRuleDemo> allASPRules = new ArrayList<>();

    public void addRuleIntoList(String head, String pBody, String nBody){
        HashMap<String, String> rule = new HashMap<>();
        rule.put("head",head);
        rule.put("pBody", pBody);
        rule.put("nBody", nBody);
        ASPRuleDemo ruleToAdd = new ASPRuleDemo(rule);
        ruleToAdd.setRuleID(allASPRules.size());
        allASPRules.add(ruleToAdd);
    }

    public List<ASPRuleDemo> getAllASPRules() {
        return allASPRules;
    }
}
