/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.services;

import com.MII.FinalProject.entities.Code;
import com.MII.FinalProject.entities.Exam;
import com.MII.FinalProject.repositories.CodeRepository;
import com.MII.FinalProject.repositories.ExamRepository;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author yosef
 */
@Service
public class ExamService {

    @Autowired
    ExamRepository er;

    @Autowired
    CodeRepository cr;

    @Autowired
    NotificationService ns;

    public List<Exam> getAll() {
        return er.findAll();
    }

    public Exam getById(Integer id) {
        return er.findById(id).get();
    }

    public List<Exam> getAllPerId(Integer id) {
        return er.getPerId(id);
    }
    
    //create/update
    public Exam save(Exam exam) {
        Exam newExam = er.save(exam);
        try {
            //        Person getById = getById(exam.getId());
//        exam.setEmail(getById.getEmail());
            ns.sendEmail(newExam);
        } catch (MessagingException ex) {
        }
        return newExam;

    }

    public void sendEmail(Exam exam) throws MessagingException {
        er.save(exam);
        Code code = new Code();
        code.setCode(exam.getCode() + "");
        code.setExpiredDate(exam.getDate());
        code.setIsSent(true);
        cr.save(code);
        ns.sendEmail(exam);
    }

    public Integer countCandidate() {
        return er.countCandidate();
    }
}
