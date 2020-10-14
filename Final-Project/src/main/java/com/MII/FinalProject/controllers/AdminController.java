/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.controllers;

import com.MII.FinalProject.entities.Exam;
import com.MII.FinalProject.services.ExamService;
import com.MII.FinalProject.services.QuestionService;
import javax.mail.MessagingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author yosef
 */
@Controller
public class AdminController {
    
    @Autowired
    ExamService examService;
    
    @Autowired
    QuestionService questionService;
    
    
    @GetMapping("sentEmail/{id}")
    public String getById(@PathVariable("id") Integer id) throws MessagingException {
        Exam exam = examService.getById(id);
        examService.sendEmail(exam);
        return "data-registration";
    }
    
    @GetMapping("/data-registration")
    public String exam(Model model){
        model.addAttribute("exam", new Exam());
        model.addAttribute("examm", examService.getAll());
        return "data-registration";
    }
    
    @GetMapping("/data-question")
    public String question(Model model){
        model.addAttribute("questions", questionService.getAll());
        return "data-question";
    }
    
}
