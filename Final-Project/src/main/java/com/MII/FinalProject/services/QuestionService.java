/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.services;

import com.MII.FinalProject.entities.Question;
import com.MII.FinalProject.repositories.QuestionRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author yosef
 */
@Service
public class QuestionService {
    
    @Autowired
    QuestionRepository repository;
    
    public List<Question> getAll() {
        return repository.findAll();
    }
    
    public List<Question> getQuestionWhere(String id){
        return repository.getQuestionWhere(id);
    }
    
    //create/update
    public Question save(Question question) {
        return repository.save(question);
    }
    
    //search
    public Question getById(Integer id){
        return repository.findById(id).get();
    }
    
    public Integer countQuestion() {
        return repository.countQuestion();
    }

    //delete 
    public void delete(Integer id) {
        Question question = getById(id);
        repository.delete(question);
    }

    public void saveAll(List<Question> question) {
        repository.saveAll(question);
    }
    
    public List<Question> getQuestionsWhere(String module) {
        return repository.getQuestionWhere(module);
    }
}
