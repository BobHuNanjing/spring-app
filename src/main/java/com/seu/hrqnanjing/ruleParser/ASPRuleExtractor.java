package com.seu.hrqnanjing.ruleParser;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/**
 * @author bobhu
 * 2018/12/19
 * function: single rule head/body/posBody/negBody extraction
 */
public class ASPRuleExtractor extends LPMLNBaseVisitor {

    private ASPRule simpleRule = new ASPRule();
    private HashSet<String> literals = new HashSet<>();
    private HashMap<String, Integer> literalMap = new HashMap<>();
    private HashMap<Integer, String> literalReverseMap = new HashMap<>();
    @Override
    public Object visitHead(LPMLNParser.HeadContext ctx) {
        List<LPMLNParser.LiteralContext> heads = ctx.literal();
        for (LPMLNParser.LiteralContext ctxs: heads) {
            String head = ctxs.getText();
            int idx = getIndexOrAddItemsIntoLiteralAndLiteralMap(head);
            simpleRule.setHead(idx);
        }
        return super.visitHead(ctx);
    }



    public void putTextToFile(String filename) throws IOException {
        HashMap<String, HashSet<String>> rule = new HashMap<>();
        rule.put("head", new HashSet<String>());
        rule.put("pBody", new HashSet<String>());
        rule.put("nBody", new HashSet<String>());
        for (Integer idx : simpleRule.getHead()) {
            rule.get("head").add(literalReverseMap.get(idx));
        }
        for (Integer idx : simpleRule.getPosBody()) {
            rule.get("pBody").add(literalReverseMap.get(idx));
        }
        for (Integer idx : simpleRule.getNegbody()) {
            rule.get("nBody").add(literalReverseMap.get(idx));
        }

        File file;
        file = new File(filename);
        if(!file.exists()){
            file.createNewFile();
        }
        FileOutputStream outputStream = new FileOutputStream(file,true);
        outputStream.write(convertListToString(rule.get("head")).getBytes());
        outputStream.write((","+convertListToString(rule.get("pBody"))).getBytes());
        outputStream.write((","+convertListToString(rule.get("nBody"))).getBytes());
        outputStream.write(("\r\n").getBytes());
        outputStream.close();

    }

    private String convertListToString(HashSet<String> list) {
        if(list.size()==0)
                return "[]";

        String val = "";
        for (String str : list) {
            val = val + str + "&";
        }

        val = val.substring(0, val.length()-1);

        return "[" + val + "]";
    }

    public int getIndexOrAddItemsIntoLiteralAndLiteralMap(String head) {
        int headIdx;
        if (literalMap.containsKey(head)) {
            headIdx = literalMap.get(head);
        } else {
            literalMap.put(head, literalMap.size());
            literalReverseMap.put(literalMap.size()-1, head);
            headIdx = literalMap.size() - 1;
        }

        return headIdx;
    }


    @Override
    public Object visitAtom(LPMLNParser.AtomContext ctx) {
        //System.out.println(ctx);
        return super.visitAtom(ctx);
    }

    @Override
    public Object visitExtended_literal(LPMLNParser.Extended_literalContext ctx) {
        int litIdx;

        // 下方是正原子(extended不是pos就是neg）
        if(ctx.literal()!=null) {
            litIdx = getIndexOrAddItemsIntoLiteralAndLiteralMap(ctx.literal().getText());
            simpleRule.setPosbody(litIdx);
        }else{
            litIdx = getIndexOrAddItemsIntoLiteralAndLiteralMap(ctx.default_literal().literal().getText());
            simpleRule.setNegbody(litIdx);
        }
        return super.visitExtended_literal(ctx);
    }

    @Override
    public Object visitLiteral(LPMLNParser.LiteralContext ctx) {
        int literalIdx;
        literalIdx = getIndexOrAddItemsIntoLiteralAndLiteralMap(ctx.getText());
        simpleRule.setLiterals(ctx.getText(), literalIdx);
        return super.visitLiteral(ctx);
    }

    @Override
    public Object visitBody(LPMLNParser.BodyContext ctx) {
        return super.visitBody(ctx);
    }

    @Override
    public Object visitLpmln_rule(LPMLNParser.Lpmln_ruleContext ctx) {
        return super.visitLpmln_rule(ctx);
    }

    ASPRule ASPRuleGetter() {
        return this.simpleRule;
    }



    void getLiteralMap() {
        System.out.println(this.literalMap);
    }
}
