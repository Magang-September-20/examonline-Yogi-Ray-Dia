/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.services;

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
    
    public Integer calculateScore(Integer exam) {
        return uaR.calculateScore(exam);
    }
    
    public Integer getExamId(String code) {
        return uaR.getExamId(code);
    }
    
    public void updateExam(Float score, String grade, String code) {
        uaR.updateExam(score, grade, code);
    }
    
    public void updateHasPassed(Integer option, String code) {
        uaR.updateHasPassed(option, code);
    }
}
