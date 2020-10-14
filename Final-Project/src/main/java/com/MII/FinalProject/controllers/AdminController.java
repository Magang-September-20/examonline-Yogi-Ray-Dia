/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.controllers;

import com.MII.FinalProject.entities.Exam;
import com.MII.FinalProject.services.ExamService;
import com.MII.FinalProject.services.QuestionService;
import com.MII.FinalProject.services.UserService;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import javax.mail.MessagingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

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

    @Autowired
    UserService userService;

    @GetMapping("/dashboard")//url or path
    public String dashboard(Model model) {
        return checkRole(model, "admin-dashboard");
    }

    @GetMapping("/data-user")
    public String user(Model model) {
        return checkRole(model, "data-user");
    }

    @GetMapping("/data-question")
    public String question(Model model) {
        model.addAttribute("questions", questionService.getAll());
        return checkRole(model, "data-question");
    }

    @GetMapping("/data-registration")
    public String exam(Model model) {
        model.addAttribute("exam", new Exam());
        model.addAttribute("examm", examService.getAll());
        return checkRole(model, "data-registration");
    }

    @GetMapping("/data-candidate")
    public String candidate(Model model) {
        return checkRole(model, "data-candidate");
    }

    public String checkRole(Model model, String page) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!auth.getName().equalsIgnoreCase("anonymousUser")) {
            if (userService.getRole(Integer.parseInt(auth.getName())).equalsIgnoreCase("[\"ROLE_ADMIN\"]")) {
                model.addAttribute("name", userService.getById(Integer.parseInt(auth.getName())).getName());
                model.addAttribute("email", userService.getById(Integer.parseInt(auth.getName())).getEmail());
                return page;
            } else {
                return "redirect:/user-dashboard";
            }
        } else {
            return "login";
        }
    }

    @GetMapping("sentEmail/{id}")
    public String getById(@PathVariable("id") Integer id) throws MessagingException {
        Exam exam = examService.getById(id);
        examService.sendEmail(exam);
        return "data-registration";
    }
}
