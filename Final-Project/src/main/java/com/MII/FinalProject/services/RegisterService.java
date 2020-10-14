/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.services;

import com.MII.FinalProject.entities.RegisterInput;
import com.MII.FinalProject.entities.rest.RegisterOutput;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

/**
 *
 * @author NAME
 */
@Service
public class RegisterService {
    @Value("${data.api.url}")
    private String url;
    
    private static final RestTemplate RT = new RestTemplate();
    
    public RegisterOutput Register(RegisterInput register){
        return RT.postForObject(url+"register", register, RegisterOutput.class);
    }
}
