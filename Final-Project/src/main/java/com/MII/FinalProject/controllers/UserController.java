/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.controllers;

import com.MII.FinalProject.entities.Module;
import com.MII.FinalProject.services.ExamService;
import com.MII.FinalProject.services.ModuleService;
import com.MII.FinalProject.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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

    @Autowired
    UserService userService;
    
    @Autowired
    ModuleService moduleService;

    @GetMapping("/user-dashboard")//url or path
    public String userDashboard(Model model) {
        model.addAttribute("modules", moduleService.getAll());
        return checkRole(model, "user-dashboard");
    }

    @GetMapping("/history-exam")//url or path
    public String historyExam(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("exam", es.getAllPerId(Integer.parseInt(auth.getName())));
        return checkRole(model, "history-exam");
    }

    @GetMapping("/exam")//url or path
    public String exam(Model model) {
        return checkRole(model, "exam");
    }

    public String checkRole(Model model, String page) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!auth.getName().equalsIgnoreCase("anonymousUser")) {
            if (userService.getRole(Integer.parseInt(auth.getName())).equalsIgnoreCase("[\"ROLE_USER\"]")) {
                model.addAttribute("name", userService.getById(Integer.parseInt(auth.getName())).getName());
                model.addAttribute("email", userService.getById(Integer.parseInt(auth.getName())).getEmail());
                return page;
            } else {
                return "redirect:/dashboard";
            }
        } else {
            return "login";
        }
    }
}
