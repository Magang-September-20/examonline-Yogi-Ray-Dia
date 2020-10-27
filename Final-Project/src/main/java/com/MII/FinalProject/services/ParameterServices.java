/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.services;

import com.MII.FinalProject.entities.Parameter;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.MII.FinalProject.repositories.ParameterRepository;

/**
 *
 * @author Yogi
 */
@Service
public class ParameterServices {
    
    @Autowired
    ParameterRepository parameterRepository;
    
    public List<Parameter> getAll(){
        return parameterRepository.findAll();
    }
    
    public Parameter getById(int id){
        return parameterRepository.findById(id).get();
    }
    
    public Parameter save(Parameter landingPage){
        return parameterRepository.save(landingPage);
    }
    
    public String getByTitle(String title){
        return parameterRepository.getByTitle(title).getSubtext();
    }
}
