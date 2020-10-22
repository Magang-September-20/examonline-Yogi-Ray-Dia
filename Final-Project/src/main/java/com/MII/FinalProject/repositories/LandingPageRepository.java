/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.repositories;

import com.MII.FinalProject.entities.LandingPage;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Yogi
 */
@Repository
public interface LandingPageRepository extends JpaRepository<LandingPage, Integer>{
    
    @Query(value = "SELECT * FROM landing_page WHERE title LIKE ?1", nativeQuery=true)
    LandingPage getByTitle(String title);
}
