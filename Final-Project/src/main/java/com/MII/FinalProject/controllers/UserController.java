/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.controllers;

import com.MII.FinalProject.services.ExamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author NAME
 */
@Controller
public class UserController {
    
    @Autowired
    ExamService es;
    
    @GetMapping("/user-dashboard")//url or path
    public String userDashboard() {
        return "user-dashboard";
    }
    
    @GetMapping("/history-exam")//url or path
    public String historyExam(Model model) {
        model.addAttribute("exam", es.getAll());
        return "history-exam";
    }
}
