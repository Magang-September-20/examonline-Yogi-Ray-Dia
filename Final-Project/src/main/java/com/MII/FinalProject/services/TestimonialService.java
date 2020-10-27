/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.services;

import com.MII.FinalProject.entities.Testimonial;
import com.MII.FinalProject.repositories.TestimonialRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Yogi
 */
@Service
public class TestimonialService {
    
    @Autowired
    TestimonialRepository testimonialRepository;
    
    public List<Testimonial> getAll(){
        return testimonialRepository.getAllLimit();
    }
    
    public Testimonial save(Testimonial testimonial){
        return testimonialRepository.save(testimonial);
    }
    
    public int check(int user){
        return testimonialRepository.check(user);
    }
}
