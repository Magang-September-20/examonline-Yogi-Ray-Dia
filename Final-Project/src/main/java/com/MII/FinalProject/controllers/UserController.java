/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author NAME
 */
@Controller
public class UserController {

    @GetMapping("/user-dashboard")//url or path
    public String userDashboard() {
        return "user-dashboard";
    }
    
    @GetMapping("/history-exam")//url or path
    public String historyExam() {
        return "history-exam";
    }
}
