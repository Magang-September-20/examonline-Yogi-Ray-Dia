/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.controllers;

import com.MII.FinalProject.entities.Exam;
import com.MII.FinalProject.entities.UserLocal;
import com.MII.FinalProject.entities.Question;
import com.MII.FinalProject.services.CodeService;
import com.MII.FinalProject.services.ExamService;
import com.MII.FinalProject.services.ModuleService;
import com.MII.FinalProject.services.QuestionService;
import com.MII.FinalProject.services.UserLocalService;
import com.MII.FinalProject.services.UserService;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import javax.mail.MessagingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
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

    @Autowired
    UserService userService;

    @Autowired
    CodeService codeService;

    @Autowired
    ModuleService moduleService;

    @Autowired
    UserLocalService userLocalService;

    @GetMapping("/dashboard")//url or path
    public String dashboard(Model model) {
        model.addAttribute("user", userService.countUser());
        model.addAttribute("question", questionService.countQuestion());
        model.addAttribute("registration", codeService.countRegistration());
        model.addAttribute("candidate", examService.countCandidate());
        model.addAttribute("recentRegister", codeService.recentRegister());
        model.addAttribute("notif", codeService.notif());
        model.addAttribute("notifCount", codeService.notifCount());
        model.addAttribute("modules", moduleService.getAll());
        return checkRole(model, "admin-dashboard");
    }

    @GetMapping("/data-user")
    public String user(Model model) {
        model.addAttribute("users", userLocalService.getAll());
        model.addAttribute("modules", moduleService.getAll());
        for (UserLocal userLocal : userLocalService.getAll()) {
            System.out.println(userLocal.getEmail());
        }
        return checkRole(model, "data-user");
    }

    @GetMapping("/data-question/{id}")
    public String question(@PathVariable("id") String id, Model model) {
        model.addAttribute("ques", new Question());
        model.addAttribute("notif", codeService.notif());
        model.addAttribute("notifCount", codeService.notifCount());
        model.addAttribute("questions", questionService.getAll());
        model.addAttribute("modules", moduleService.getAll());
        model.addAttribute("questionss", questionService.getAll());
        model.addAttribute("selectModule", moduleService.getById(id).getName());
        return checkRole(model, "data-question");
    }

    @GetMapping("getIdQuestion/{id}")
    public String getByIdQuestion(@PathVariable("id") Integer id) {
        Question question = questionService.getById(id);
        return "data-question";
    }

    
    @GetMapping("/data-registration")
    public String exam(Model model) {
        model.addAttribute("notif", codeService.notif());
        model.addAttribute("notifCount", codeService.notifCount());
        model.addAttribute("exam", new Exam());
        model.addAttribute("exams", examService.getAll());
        model.addAttribute("modules", moduleService.getAll());
        return checkRole(model, "data-registration");
    }

    @GetMapping("/data-candidate/{id}")
    public String candidate(@PathVariable("id") String id, Model model) {
        model.addAttribute("notif", codeService.notif());
        model.addAttribute("notifCount", codeService.notifCount());
        model.addAttribute("modules", moduleService.getAll());
        model.addAttribute("selectModule", moduleService.getById(id).getName());
        model.addAttribute("candidates", examService.getAllCandidate(id));
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
    public String getById(@PathVariable("id") Integer id) throws MessagingException, ParseException {
        Exam exam = examService.getById(id);
        examService.sendEmail(exam);
        return "redirect:/data-registration";
    }

    @ResponseBody
    @GetMapping("/question/getAll")
    public List<Question> getAll() {
        return questionService.getAll();
    }
    
    @ResponseBody
    @PostMapping("/save")
    public Question save(@RequestBody Question question) {
        return questionService.save(question);
    }

    @ResponseBody
    @GetMapping("getById")
    public Question getByIdQuestion(Integer id) {
        Question result = questionService.getById(id);
        return result;
    }

    @ResponseBody
    @GetMapping("deleteById")
    public void deleteById(Integer id) {
        questionService.delete(id);
        String result = "Test delete";

    }
}
