/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.controllers;

import com.MII.FinalProject.entities.LoginInput;
import com.MII.FinalProject.entities.RegisterInput;
import com.MII.FinalProject.entities.rest.LoginOutput;
import com.MII.FinalProject.entities.rest.RegisterOutput;
import com.MII.FinalProject.entities.UserLocal;
import com.MII.FinalProject.services.ExamService;
import com.MII.FinalProject.services.ParameterServices;
import com.MII.FinalProject.services.LoginService;
import com.MII.FinalProject.services.QuestionService;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import com.MII.FinalProject.services.RegisterService;
import com.MII.FinalProject.services.TestimonialService;
import com.MII.FinalProject.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author NAME
 */
@Controller
public class MainController {

    @Autowired
    LoginService loginService;

    @Autowired
    RegisterService registerService;

    @Autowired
    UserService userService;

    @Autowired
    ExamService examService;

    @Autowired
    QuestionService questionService;
    
    @Autowired
    ParameterServices landingPageServices;
    
    @Autowired
    TestimonialService testimonialService;

    @GetMapping("")//url or path
    public String index(Model model) {
        model.addAttribute("jumbotron", landingPageServices.getByTitle("jumbotron"));
        model.addAttribute("jumbotronSub", landingPageServices.getByTitle("jumbotron-sub"));
        model.addAttribute("aboutTitle", landingPageServices.getByTitle("about-title"));
        model.addAttribute("aboutSub", landingPageServices.getByTitle("about-sub"));
        model.addAttribute("aboutRightSub", landingPageServices.getByTitle("about-right-sub"));
        model.addAttribute("aboutRightPoint", landingPageServices.getByTitle("about-right-point"));
        model.addAttribute("aboutRightItalic", landingPageServices.getByTitle("about-right-italic"));
        model.addAttribute("categorySub", landingPageServices.getByTitle("category-sub"));
        model.addAttribute("java", landingPageServices.getByTitle("java"));
        model.addAttribute("cpp", landingPageServices.getByTitle("c++"));
        model.addAttribute("net", landingPageServices.getByTitle(".net"));
        model.addAttribute("react", landingPageServices.getByTitle("react"));
        model.addAttribute("phyton", landingPageServices.getByTitle("phyton"));
        model.addAttribute("html", landingPageServices.getByTitle("html"));
        model.addAttribute("teamSub", landingPageServices.getByTitle("team-sub"));
        model.addAttribute("contactSub", landingPageServices.getByTitle("contact-sub"));
        model.addAttribute("mapLink", landingPageServices.getByTitle("link-map"));
        model.addAttribute("location", landingPageServices.getByTitle("location"));
        model.addAttribute("email", landingPageServices.getByTitle("email"));
        model.addAttribute("call", landingPageServices.getByTitle("call"));
        model.addAttribute("footerTitle", landingPageServices.getByTitle("footer-title"));
        model.addAttribute("footerSub", landingPageServices.getByTitle("footer-sub"));
        model.addAttribute("testimonials", testimonialService.getAll());
        return "index";//index.html
    }

    @GetMapping("/login")//url or path
    public String login() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!auth.getName().equalsIgnoreCase("anonymousUser")) {
            if (userService.getRole(Integer.parseInt(auth.getName())).equalsIgnoreCase("[\"ROLE_ADMIN\"]") && userService.getById(Integer.parseInt(auth.getName())).getIsActive()) {
                return "redirect:dashboard";
            } else if (userService.getById(Integer.parseInt(auth.getName())).getIsActive()) {
                return "redirect:user-dashboard";
            } else {
                return "login";
            }
        } else {
            return "login";
        }
    }

    @GetMapping("/register")//url or path
    public String register() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!auth.getName().equalsIgnoreCase("anonymousUser")) {
            if (userService.getRole(Integer.parseInt(auth.getName())).equalsIgnoreCase("[\"ROLE_ADMIN\"]")) {
                return "redirect:dashboard";
            } else {
                return "redirect:user-dashboard";
            }
        } else {
            return "register";
        }
    }

    @PostMapping("/registration")
    public String registration(RegisterInput input) {
        RegisterOutput output = registerService.Register(input);
        if (output.getStatus().equalsIgnoreCase("success")) {
            UserLocal user = new UserLocal();
            user.setId(userService.getId(input.getEmail()));
            user.setName(input.getName());
            user.setEmail(input.getEmail());
            user.setIsActive(true);
            userService.save(user);
            return "redirect:/login";
        } else {
            return "redirect:/register";
        }
    }

    @PostMapping("/verification")
    public String verification(LoginInput input) {
        LoginOutput output = loginService.LoginNew(input);
        if (output.getStatus().equalsIgnoreCase("success")) {
            User user = new User(output.getUser().getId(), "", getAuthorities(output.getUser().getRoles()));
            PreAuthenticatedAuthenticationToken authenticationToken = new PreAuthenticatedAuthenticationToken(user, "", user.getAuthorities());
            SecurityContextHolder.getContext().setAuthentication(authenticationToken);
            return "redirect:/dashboard";
        } else {
            return "redirect:/login";
        }
    }

    private static Collection<? extends GrantedAuthority> getAuthorities(List<String> roles) {
        final List<SimpleGrantedAuthority> authorities = new LinkedList<>();
        for (String role : roles) {
            authorities.add(new SimpleGrantedAuthority(role));
        }
        return authorities;
    }

}
