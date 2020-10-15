/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.controllers;

import com.MII.FinalProject.entities.Code;
import com.MII.FinalProject.entities.Exam;
import com.MII.FinalProject.entities.Module;
import com.MII.FinalProject.entities.UserLocal;
import com.MII.FinalProject.services.CodeService;
import com.MII.FinalProject.services.ExamService;
import com.MII.FinalProject.services.ModuleService;
import com.MII.FinalProject.services.UserService;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author NAME
 */
@Controller
public class UserController {

    @Autowired
    ExamService examService;

    @Autowired
    UserService userService;

    @Autowired
    ModuleService moduleService;

    @Autowired
    CodeService codeService;

    @GetMapping("/user-dashboard")//url or path
    public String userDashboard(Model model) {
        model.addAttribute("modules", moduleService.getAll());
        model.addAttribute("module", new Module());
        return checkRole(model, "user-dashboard");
    }

    @GetMapping("/history-exam")//url or path
    public String historyExam(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("exam", examService.getAllPerId(Integer.parseInt(auth.getName())));
        return checkRole(model, "history-exam");
    }

    @GetMapping("/exam")//url or path
    public String exam(Model model) {
        model.addAttribute("code", new Code());
        return checkRole(model, "exam");
    }

    @PostMapping("/verifyExam")//url or path
    public String verifyExam(Model model, @Validated Code code) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        System.out.println(codeService.verifyCode(code.getCode(), Integer.parseInt(auth.getName())));
        if (codeService.verifyCode(code.getCode(), Integer.parseInt(auth.getName())) == 1) {
            codeService.updateUseCode(code.getCode());
            examService.updateUseCode(code.getCode());
            return checkRole(model, "start-exam");
        } else {
            return checkRole(model, "exam");
        }
    }

    @GetMapping("/start-exam")//url or path
    public String startExam(Model model) {
        return checkRole(model, "start-exam");
    }

    public String checkRole(Model model, String page) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!auth.getName().equalsIgnoreCase("anonymousUser")) {
            if (userService.getRole(Integer.parseInt(auth.getName())).equalsIgnoreCase("[\"ROLE_USER\"]")) {
//                System.out.println(auth.getName());
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

    @PostMapping("/exam-registeration")
    public String registerExam(Model model, @Validated Module module) {
        Code code = new Code();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String userId = String.format("%03d", Integer.parseInt(auth.getName()));    //3 digit id

        //random string generator
        String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                + "0123456789"
                + "abcdefghijklmnopqrstuvxyz";
        StringBuilder sb = new StringBuilder();
        int n = 3;
        while (n-- != 0) {
            int character = (int) (Math.random() * AlphaNumericString.length());
            sb.append(AlphaNumericString.charAt(character));
        }

        //tomorrow's date
        Date dt = new Date();
        Calendar c = Calendar.getInstance();
        c.setTime(dt);
        c.add(Calendar.DATE, 1);
        dt = c.getTime();
        
        
        //user id
        UserLocal user = new UserLocal();
        user.setId(Integer.parseInt(auth.getName()));
        
        //table Code
        code.setCode(module.getId() + userId + sb.toString());
        code.setModule(module);
        code.setIsSent(false);
        code.setIsUsed(false);
        code.setExpiredDate(dt);
        code.setUser(user);
        codeService.save(code);
        
        examService.registerExam(module.getId() + userId + sb.toString(), auth.getName());
        
        return checkRole(model, "exam");
    }
}
