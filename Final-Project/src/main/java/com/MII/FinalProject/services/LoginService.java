    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.services;

import com.MII.FinalProject.entities.LoginInput;
import com.MII.FinalProject.entities.rest.LoginOutput;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

/**
 *
 * @author NAME
 */
@Service
public class LoginService {
    
    @Value("${data.api.url}")
    private String url;
    
    private static final RestTemplate RT = new RestTemplate();
    
    public LoginOutput Login(LoginInput login){
        HttpEntity<LoginInput> request = new HttpEntity<LoginInput>(login,null);
        ResponseEntity<LoginOutput> responseEntity = RT.exchange(url+"login",
                HttpMethod.POST,
                request,
                new ParameterizedTypeReference<LoginOutput>(){
                }
                );
        return responseEntity.getBody();
    }
    
    public LoginOutput LoginNew(LoginInput login){
        return RT.postForObject(url+"login", login, LoginOutput.class);
    }
}
