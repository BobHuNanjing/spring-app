package com.seu.hrqnanjing.demo;

import com.seu.hrqnanjing.database.RuleDataBase;
import com.seu.hrqnanjing.expgraph.ExplanationSpace;
import com.seu.hrqnanjing.expgraph.GraphvizDraw;
import com.seu.hrqnanjing.ruleParser.RuleFileParser;
import com.seu.hrqnanjing.service.GraphService;
import com.seu.hrqnanjing.service.NameValidationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;

@Controller
public class HomeController {

    @Autowired
    private GraphService graphService;

    @Autowired
    private NameValidationService nameValidationService;

    @Autowired
    private RuleDataBase ruleDataBase;

    @Autowired
    private RuleFileParser ruleFileParser;

    @GetMapping({"/", "/home"})
    public String showHomePage() {
        return "home";
    }

    @GetMapping("/showGraph")
    public String showGraphPage() {
        return "showGraph";
    }

    @PostMapping("/showGraph")
    public String drawGraph(@RequestParam String filename, ModelMap model) throws IOException {
        //创建一个解释空间
        ExplanationSpace explanationSpace = new ExplanationSpace();
        explanationSpace.initExplanationSpace();
        explanationSpace.setIdForEveryNode();
        explanationSpace.updateNodeOnEdges();

        // 解释空间画图
        GraphvizDraw spaceDraw = new GraphvizDraw(explanationSpace);
        spaceDraw.drawNode();
        spaceDraw.displayGraph("src/main/graphs/static/images/解释空间.svg");
        String fileBaseName = "src/main/graphs/static/images/";
        String graphFileName = nameValidationService.nameValidate(filename, model);
        //if (graphFileName.length() != 0) {
        //    graphService.drawAGraph(fileBaseName + graphFileName);
        //    model.put("pic_name", fileBaseName.replace("src/main/", "/") + graphFileName);
        model.put("pic_name", "/graphs/static/images/解释空间.svg");

        //}
        return "showGraph";
    }

    @GetMapping("/loadFromFile")
    public String showLoadPage(){
        return "loadFromFile";
    }
    @PostMapping("/loadFromFile")
    public String loadRuleFile(@RequestParam String filename) throws IOException {
        ruleFileParser.parse(filename);
        return "loadFromFile";
    }

    @GetMapping("/addRules")
    public String showAddsRulesPage(ModelMap model) {
        model.put("ruleList", ruleDataBase.getAllASPRules());
        return "addRules";
    }

    @PostMapping("/addRules")
    //@ResponseBody
    public String getRules(@RequestParam String head, @RequestParam String pBody, @RequestParam String nBody) {
        ruleDataBase.addRuleIntoList(head, pBody, nBody);
        return "redirect:/addRules";
    }
}
