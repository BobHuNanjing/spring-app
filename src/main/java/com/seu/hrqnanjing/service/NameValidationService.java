package com.seu.hrqnanjing.service;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

@Component
public class NameValidationService {
    public String nameValidate(String filename, ModelMap model){

        if(filename.length()==0){
            model.put("alert_message", "文件名为空，请重新输入！");
            return "";
        }else if(filename.endsWith(".")){
            model.put("alert_message", "文件名不能以.结尾，请重新输入！");
            return "";
        } else if(!filename.contains(".png")){
            filename += ".png";
            model.put("alert_message","成功添加文件"+filename);
            return filename;
        }
        model.addAttribute("alert_message","");
        return filename;
    }

}
