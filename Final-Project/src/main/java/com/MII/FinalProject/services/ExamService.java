/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.services;

import com.MII.FinalProject.entities.Exam;
import com.MII.FinalProject.repositories.ExamRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author yosef
 */
@Service
public class ExamService {
    
    @Autowired
    ExamRepository Exam;
    
    public List<Exam> getAll() {
        return Exam.findAll();
    }
    
//    public List<Exam> getbyId(Integer id) {
//        return Exam.findById(id);
//    }
}
