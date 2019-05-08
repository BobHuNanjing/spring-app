package com.seu.hrqnanjing.ruleParser;

import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;

import java.io.*;

public class DemoTest {
    public static void main(String[] args) throws IOException {
        try {
            File ruleFile = new File("rules.lp");
            InputStreamReader inputReader = new InputStreamReader(new FileInputStream(ruleFile));
            BufferedReader bf = new BufferedReader(inputReader);
            // 按行读取字符串
            String str;
            while ((str = bf.readLine()) != null) {
                parsingRule(str);
            }
            bf.close();
            inputReader.close();
        } catch (IOException e) {
            e.printStackTrace();


        }
    }

    private static void parsingRule(String str) throws IOException {
        String program = str;
        CharStream input = CharStreams.fromString(program);
        LPMLNLexer lexer = new LPMLNLexer(input);
        CommonTokenStream token = new CommonTokenStream(lexer);
        LPMLNParser parser = new LPMLNParser(token);
        ParseTree tree = parser.lpmln_rule();
        ASPRuleExtractor visitor = new ASPRuleExtractor();
        visitor.visit(tree);
        visitor.putTextToFile("result.txt");
        visitor.getLiteralMap();
    }
}
