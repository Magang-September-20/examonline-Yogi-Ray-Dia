/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.services;

import com.MII.FinalProject.entities.UserLocal;
import com.MII.FinalProject.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

/**
 *
 * @author NAME
 */
@Service
public class UserService {

    @Autowired
    UserRepository repository;

    @Value("${data.api.url}")
    private String url;

    private static final RestTemplate RT = new RestTemplate();

    public int getId(String email) {
        return RT.getForObject(url + "user/getId/" + email, Integer.class);
    }

    public UserLocal save(UserLocal user) {
        return repository.save(user);
    }
    
    public UserLocal getById(int id) {
        return repository.findById(id).get();
    }
}
