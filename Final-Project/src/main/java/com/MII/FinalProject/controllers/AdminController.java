/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.controllers;

import com.MII.FinalProject.entities.Exam;
import com.MII.FinalProject.entities.Parameter;
import com.MII.FinalProject.entities.UserLocal;
import com.MII.FinalProject.entities.Question;
import com.MII.FinalProject.services.CodeService;
import com.MII.FinalProject.services.ExamService;
import com.MII.FinalProject.services.ParameterServices;
import com.MII.FinalProject.services.ModuleService;
import com.MII.FinalProject.services.QuestionService;
import com.MII.FinalProject.services.UserLocalService;
import com.MII.FinalProject.services.UserService;
import java.text.ParseException;
import java.util.HashMap;
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

    @Autowired
    ParameterServices parameterServices;

    @GetMapping("/dashboard")//url or path
    public String dashboard(Model model) {
        model.addAttribute("user", userService.countUser());
        model.addAttribute("question", questionService.countQuestion());
        model.addAttribute("registration", codeService.countRegistration());
        model.addAttribute("candidate", examService.countCandidate());
        model.addAttribute("recentRegister", codeService.recentRegister());
        model.addAttribute("notif", codeService.notif());
        model.addAttribute("modules", moduleService.getAll());
        model.addAttribute("notifCount", codeService.notifCount());
        HashMap<String, Float> map = new HashMap<String, Float>();
        for (int i = 0; i < moduleService.getAll().size(); i++) {
            map.put(moduleService.getIdModule()[i], percentage()[i]);
        }
        model.addAttribute("map", map);
        return checkRole(model, "admin-dashboard");
    }

    @GetMapping("/data-user")
    public String user(Model model) {
        model.addAttribute("users", userLocalService.getAll());
        model.addAttribute("modules", moduleService.getAll());
        model.addAttribute("notif", codeService.notif());
        model.addAttribute("notifCount", codeService.notifCount());
        return checkRole(model, "data-user");
    }

    @GetMapping("/data-question/{id}")
    public String question(@PathVariable("id") String id, Model model) {
        model.addAttribute("ques", new Question());
        model.addAttribute("notif", codeService.notif());
        model.addAttribute("notifCount", codeService.notifCount());
        model.addAttribute("modules", moduleService.getAll());
        model.addAttribute("selectModule", moduleService.getById(id).getName());
        model.addAttribute("id", moduleService.getById(id).getId());
        return checkRole(model, "data-question");
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
        model.addAttribute("candidates", examService.getAllCandidate(id));
        model.addAttribute("selectModule", moduleService.getById(id).getName());
        model.addAttribute("id", moduleService.getById(id).getId());
        return checkRole(model, "data-candidate");
    }

    @GetMapping("/data-page")
    public String page(Model model) {
        model.addAttribute("modules", moduleService.getAll());
        model.addAttribute("notif", codeService.notif());
        model.addAttribute("notifCount", codeService.notifCount());
        return checkRole(model, "data-page");
    }

    public String checkRole(Model model, String page) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!auth.getName().equalsIgnoreCase("anonymousUser")) {
            if (userService.getRole(Integer.parseInt(auth.getName())).equalsIgnoreCase("[\"ROLE_ADMIN\"]") && userService.getById(Integer.parseInt(auth.getName())).getIsActive()) {
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

    @ResponseBody
    @GetMapping("sendEmail")
    public String sendEmail(int id) throws MessagingException, ParseException {
        examService.sendEmail(examService.getById(id));
        return "redirect:/data-registration";
    }

    //CRUD QUESTION
    @ResponseBody
    @GetMapping("question/get-where-module/{id}")
    public List<Question> getByIdQuestion(@PathVariable("id") String id) {
        return questionService.getQuestionModule(id);
    }

    @ResponseBody
    @PostMapping("/saveQuestion")
    public Question saveQuestion(@RequestBody Question question) {
        return questionService.save(question);
    }

    @ResponseBody
    @GetMapping("/getQuestionById")
    public Question getQuestionById(int id) {
        return questionService.getById(id);
    }

    @ResponseBody
    @PostMapping("/deleteQuestionById")
    public void deleteQuestionById(int id) {
        questionService.deleteQuestionById(id);
    }

    //CRUD User
    @ResponseBody
    @PostMapping("/updateUser")
    public void updateUser(@RequestBody UserLocal local) {
        userLocalService.updateUser(local.getIsActive(), local.getId());
    }

    //CRUD PAGE
    @ResponseBody
    @GetMapping("/landing-page/getAll")
    public List<Parameter> getAllLandingPage() {
        return parameterServices.getAll();
    }

    @ResponseBody
    @GetMapping("/landing-page/getById")
    public Parameter getByIdLandingPage(int id) {
        return parameterServices.getById(id);
    }

    @ResponseBody
    @PostMapping("/landing-page/save")
    public Parameter saveLandingPage(@RequestBody Parameter parameter) {
        return parameterServices.save(parameter);
    }

    public float[] percentage() {
        String[] mod = moduleService.getIdModule();
        float p[];
        p = new float[moduleService.getAll().size()];
        for (int i = 0; i < moduleService.getAll().size(); i++) {
            int pass = examService.getPassed(mod[i]);
            int fail = examService.getFailed(mod[i]);
            int total = fail + pass;
            try {
                float percent = pass * 100 / total;
                p[i] = percent;
            } catch (Exception e) {
            }
        }
        return p;
    }
}
