/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.services;

import com.MII.FinalProject.entities.Exam;
import com.MII.FinalProject.entities.UserAnswer;
import com.MII.FinalProject.repositories.UserAnswerRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author nathanray
 */
@Service
public class UserAnswerService {
    
    @Autowired
    UserAnswerRepository uaR;
    
        public List<UserAnswer> getAll() {
        return uaR.findAll();
    }

    public void save(UserAnswer answer) {
        uaR.save(answer);
    }
    
}
