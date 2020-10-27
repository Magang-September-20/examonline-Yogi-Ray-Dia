/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.repositories;

import com.MII.FinalProject.entities.Testimonial;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Yogi
 */
@Repository
public interface TestimonialRepository extends JpaRepository<Testimonial, Integer>{
    
    @Query(value = "SELECT * FROM testimonial ORDER BY user DESC LIMIT 8", nativeQuery = true)
    List<Testimonial> getAllLimit();
    
    @Query(value = "SELECT COUNT(*) FROM testimonial WHERE user=?1", nativeQuery = true)
    int check(int user);
    
}
