/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.services;

import com.MII.FinalProject.entities.LandingPage;
import com.MII.FinalProject.repositories.LandingPageRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Yogi
 */
@Service
public class LandingPageServices {
    
    @Autowired
    LandingPageRepository landingPageRepository;
    
    public List<LandingPage> getAll(){
        return landingPageRepository.findAll();
    }
    
    public LandingPage getById(int id){
        return landingPageRepository.findById(id).get();
    }
    
    public LandingPage save(LandingPage landingPage){
        return landingPageRepository.save(landingPage);
    }
    
    public String getByTitle(String title){
        return landingPageRepository.getByTitle(title).getSubtext();
    }
}
