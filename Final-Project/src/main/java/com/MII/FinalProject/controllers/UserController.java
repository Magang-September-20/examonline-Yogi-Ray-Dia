/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.controllers;

import com.MII.FinalProject.entities.Code;
import com.MII.FinalProject.entities.Exam;
import com.MII.FinalProject.entities.Module;
import com.MII.FinalProject.entities.Question;
import com.MII.FinalProject.entities.Testimonial;
import com.MII.FinalProject.entities.UserAnswer;
import com.MII.FinalProject.entities.UserLocal;
import com.MII.FinalProject.services.CodeService;
import com.MII.FinalProject.services.ExamService;
import com.MII.FinalProject.services.ModuleService;
import com.MII.FinalProject.services.QuestionService;
import com.MII.FinalProject.services.TestimonialService;
import com.MII.FinalProject.services.UserAnswerService;
import com.MII.FinalProject.services.UserService;
import java.text.DecimalFormat;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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

    @Autowired
    QuestionService questionService;

    @Autowired
    UserAnswerService userAnswerService;

    @Autowired
    TestimonialService testimonialService;

    //Kok Error
    @GetMapping("/user-dashboard")//url or path
    public String userDashboard(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("modules", moduleService.getAll());
        model.addAttribute("module", new Module());
        model.addAttribute("countHistoryExam", examService.countHistoryExam(Integer.parseInt(auth.getName())));
        return checkRole(model, "user-dashboard");
    }

    @GetMapping("/history-exam")//url or path
    public String historyExam(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//        model.addAttribute("exam", examService.getAll());
//        model.addAttribute("exam", examService.getAllPerId(Integer.parseInt(auth.getName())));
        model.addAttribute("countHistoryExam", examService.countHistoryExam(Integer.parseInt(auth.getName())));
        return checkRole(model, "history-exam");
    }

    @GetMapping("/exam")//url or path
    public String exam(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("codes", new Code());
        model.addAttribute("countHistoryExam", examService.countHistoryExam(Integer.parseInt(auth.getName())));
        return checkRole(model, "exam");
    }

    @PostMapping("/verifyExam")//url or path
    public String verifyExam(Model model, @Validated Code code) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (codeService.verifyCode(code.getCode(), Integer.parseInt(auth.getName())) == 1) {
            codeService.updateUseCode(code.getCode());
            model.addAttribute("countHistoryExam", examService.countHistoryExam(Integer.parseInt(auth.getName())));
            return checkRole(model, "redirect:/pre-exam/" + code);
        } else {
            return checkRole(model, "redirect:/exam");
        }
    }

    @GetMapping("/pre-exam/{code}")//url or path
    public String preExam(@PathVariable("code") String code, Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("name", userService.getById(Integer.parseInt(auth.getName())).getName());
        model.addAttribute("countques", questionService.countByModule(new String(code).substring(0, 3)));
        model.addAttribute("module", moduleService.getById(new String(code).substring(0, 3)).getName());
        model.addAttribute("passingscore", moduleService.getById(new String(code).substring(0, 3)).getPassingScore());
        model.addAttribute("duration", moduleService.getById(new String(code).substring(0, 3)).getDuration());
        model.addAttribute("code", code);
        return checkRole(model, "pre-exam");
    }

    @GetMapping("/start-exam/{code}")//url or path
    public String startExam(@PathVariable("code") String code, Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        examService.updateUseCode(code);
        model.addAttribute("name", userService.getById(Integer.parseInt(auth.getName())).getName());
        model.addAttribute("countques", questionService.countByModule(new String(code).substring(0, 3)));
        model.addAttribute("module", moduleService.getById(new String(code).substring(0, 3)).getName());
        model.addAttribute("duration", moduleService.getById(new String(code).substring(0, 3)).getDuration());
        model.addAttribute("questions", questionService.getQuestionsWhere(new String(code).substring(0, 3)));
        model.addAttribute("id", new String(code).substring(0, 3));
        model.addAttribute("exam", examService.getExam(code).getId());
        model.addAttribute("code", code);
        return checkRole(model, "start-exam");
    }

    @GetMapping("/testimonial")
    public String testimonial(Model model) {
        model.addAttribute("testimonial", new Testimonial());
        return checkRole(model, "testimonial");
    }

    public String checkRole(Model model, String page) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!auth.getName().equalsIgnoreCase("anonymousUser")) {
            if (userService.getRole(Integer.parseInt(auth.getName())).equalsIgnoreCase("[\"ROLE_USER\"]") && userService.getById(Integer.parseInt(auth.getName())).getIsActive()) {
                model.addAttribute("name", userService.getById(Integer.parseInt(auth.getName())).getName());
                model.addAttribute("email", userService.getById(Integer.parseInt(auth.getName())).getEmail());
                return page;
            } else {
                return "redirect:/login";
            }
        } else {
            return "login";
        }
    }

    @PostMapping("/saveTestimonial")
    public String saveTestimonial(Model model, @Validated Testimonial testimonial) {
        testimonialService.save(testimonial);
        return checkRole(model, "redirect:history-exam");
    }

    @PostMapping("/exam-registeration")
    public String registerExam(Model model, @Validated Module module, RedirectAttributes attributes) {
        attributes.addFlashAttribute("message", moduleService.getModuleName(module.getId()));
        Code code = new Code();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String uniqueCode;
        //random string generator
        String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                + "0123456789"
                + "abcdefghijklmnopqrstuvxyz";
        StringBuilder sb = new StringBuilder();
        int n = 17;
        do {
            while (n-- != 0) {
                int character = (int) (Math.random() * AlphaNumericString.length());
                sb.append(AlphaNumericString.charAt(character));
            }
            uniqueCode = module.getId() + sb.toString();
        } while (codeService.checkCode(uniqueCode) >= 1);

//        uniqueCode = "JAVB9Vaf5YsXBdLdVAzP";
        //tomorrow's date
//        Date dt = new Date();
//        Calendar c = Calendar.getInstance();
//        c.setTime(dt);
//        c.add(Calendar.DATE, 1);
//        dt = c.getTime();
        //user id
        UserLocal user = new UserLocal();
        user.setId(Integer.parseInt(auth.getName()));

        //table Code
        code.setCode(uniqueCode);
        code.setModule(module);
        code.setIsSent(false);
        code.setIsUsed(false);
        code.setExpiredDate(null);
        code.setUser(user);
        codeService.save(code);

        examService.registerExam(module.getId() + sb.toString(), auth.getName());

        return checkRole(model, "redirect:/exam");
    }

    @ResponseBody
    @GetMapping("getQuestionById/{id}")
    public List<Question> getById(@PathVariable("id") String id) {
        return questionService.getQuestionsWhere(id);
    }

    @ResponseBody
//    @RequestMapping( value ="/saveAnswer", method = RequestMethod.POST)
    @PostMapping("/saveAnswer")
    public UserAnswer saveQuestion(@RequestBody UserAnswer userAnswer) {
        return userAnswerService.save(userAnswer);
    }

    @ResponseBody
    @GetMapping("/getCode/{code}")
    public String getCode(@PathVariable("code") String code) {
        return "/submit/" + code;
    }

    @GetMapping("/submit/{code}")
    public String calculateScore(@PathVariable("code") String code) {
//        code = "CPPcX1pgETeeCFVeFVMf";
        DecimalFormat df = new DecimalFormat("#");
        df.setMaximumFractionDigits(2);
        String codeId = code.substring(0, 3);
//        System.out.println(userAnswerService.calculateScore(userAnswerService.getExamId(code)));

        //scoring system
        float userScore = userAnswerService.calculateScore(userAnswerService.getExamId(code));
        float numberOfQuestions = moduleService.getNumberOfQuestions(codeId);
        float score = Float.parseFloat(df.format(userScore / numberOfQuestions * 100));
//        System.out.println(score);

        String grade = "";
        if (score >= 0 && score < 50) {
            grade = "F";
        } else if (score >= 50 && score < 60) {
            grade = "D";
        } else if (score >= 60 && score < 70) {
            grade = "C";
        } else if (score >= 70 && score < 90) {
            grade = "B";
        } else if (score >= 90 && score <= 100) {
            grade = "A";
        }

        if (score >= moduleService.getPassingScore(codeId)) {
            userAnswerService.updateHasPassed(1, code);
        } else {
            userAnswerService.updateHasPassed(0, code);
        }

        userAnswerService.updateExam(score, grade, code);

        return "redirect:/exam-result/" + code;
    }

    @GetMapping("/exam-result/{code}")//url or path
    public String examResult(@PathVariable("code") String code, Model model) {
//        code = "CPPcX1pgETeeCFVeFVMf";
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("module", moduleService.getById(new String(code).substring(0, 3)).getName());
        model.addAttribute("name", userService.getById(Integer.parseInt(auth.getName())).getName());
        model.addAttribute("correct", userAnswerService.calculateScore(userAnswerService.getExamId(code)));
        model.addAttribute("score", examService.getScore(code));
        model.addAttribute("numberOfQuestions", questionService.countByModule(new String(code).substring(0, 3)));
        model.addAttribute("grade", examService.getGrade(code));
        model.addAttribute("hasPassed", examService.getHasPassed(code));
        String start = examService.getStart(code);
        String startSubbed = examService.subTime(start);

        String end = examService.getEnd(code);
        String endSubbed = examService.subTime(end);
        model.addAttribute("duration", examService.getDuration(startSubbed, endSubbed));

//        System.out.println(startSubbed);
//        System.out.println(endSubbed);
//        System.out.println(examService.getDuration(startSubbed, endSubbed));
        return checkRole(model, "exam-result");
    }

    @ResponseBody
    @GetMapping("/historyExam/{id}")
    public List<Exam> getHistory(@PathVariable("id") String id) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return examService.getAllPerId(Integer.parseInt(auth.getName()), id);
    }
}
