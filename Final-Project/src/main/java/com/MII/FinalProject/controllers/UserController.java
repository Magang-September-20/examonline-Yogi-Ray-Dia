/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.controllers;

import com.MII.FinalProject.entities.Exam;
import com.MII.FinalProject.services.ExamService;
import com.MII.FinalProject.services.UserService;
import javax.mail.MessagingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

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

    @GetMapping("/user-dashboard")//url or path
    public String userDashboard(Model model) {
        return checkRole(model, "user-dashboard");
    }

    @GetMapping("/history-exam")//url or path
    public String historyExam(Model model) {
        model.addAttribute("exam", es.getAll());
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
