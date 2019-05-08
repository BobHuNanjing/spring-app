package com.seu.hrqnanjing.ruleParser;

import java.util.HashMap;
import java.util.HashSet;

public class ASPRule {
    private HashSet<Integer> head = new HashSet<>();
    private HashSet<Integer> posBody = new HashSet<>();
    private HashSet<Integer> negBody = new HashSet<>();
    private HashSet<HashSet<Integer>> body = new HashSet<>();
    private HashMap<String,Integer> literals = new HashMap<>();

    void setHead(int headIndex) {
        this.head.add(headIndex);
    }

    public HashSet<Integer> getPosBody() {
        return posBody;
    }

    public HashSet<Integer> getNegBody() {
        return negBody;
    }

    void setPosbody(int posLiteral) {
    /*    for (Map.Entry<String, Integer> entry : literals.entrySet()) {
            if(!negbody.contains(entry.getValue())){
                //System.out.println(entry.getValue());
                posbody.add(entry.getValue());
            }
        }*/
        posBody.add(posLiteral);
    }

    void setNegbody(int negLiteral) {
        negBody.add(negLiteral);
    }

    public void setBody() {
        body.add(getPosbody());
        body.add(getNegbody());
    }

    void setLiterals(String literal, int idx) {
        this.literals.put(literal,idx);
    }

    public HashSet<Integer> getHead() {
        return this.head;
    }

    public HashSet<Integer> getPosbody() {
        return posBody;
    }

    public HashSet<Integer> getNegbody() {
        return negBody;
    }

    public HashSet<HashSet<Integer>> getBody() {
        return body;
    }

    public HashMap<String, Integer> getLiterals() {
        return literals;
    }

    @Override
    public String toString() {
        return "head:"+this.getHead()+",posBody:"+this.getPosbody()+",negBody:"+this.getNegbody();
    }


}
