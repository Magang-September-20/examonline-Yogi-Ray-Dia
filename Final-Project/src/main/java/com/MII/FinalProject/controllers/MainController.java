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
import com.MII.FinalProject.services.LoginService;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import com.MII.FinalProject.services.RegisterService;
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
import org.springframework.web.bind.annotation.RequestMapping;

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

    @RequestMapping("")//url or path
    public String index() {
        return "index";//index.html
    }

    @GetMapping("/login")//url or path
    public String login() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!auth.getName().equalsIgnoreCase("anonymousUser")) {
            return "redirect:/dashboard";
        } else {
            return "login";
        }
    }

    @GetMapping("/register")//url or path
    public String register() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!auth.getName().equalsIgnoreCase("anonymousUser")) {
            return "redirect:/dashboard";
        } else {
            return "register";
        }
    }

    
    @GetMapping("/dashboard")//url or path
    public String dashboard(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!auth.getName().equalsIgnoreCase("anonymousUser")) {
            return "index";
        } else {
            return "login";
        }
    }
    
    @PostMapping("/registration")
    public String registration(RegisterInput input) {
        RegisterOutput output = registerService.Register(input);
        if (output.getStatus().equalsIgnoreCase("success")) {
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
