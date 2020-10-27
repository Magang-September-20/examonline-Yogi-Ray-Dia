/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.repositories;

import com.MII.FinalProject.entities.Parameter;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Yogi
 */
@Repository
public interface ParameterRepository extends JpaRepository<Parameter, Integer>{
    
    @Query(value = "SELECT * FROM parameter WHERE title LIKE ?1", nativeQuery=true)
    Parameter getByTitle(String title);
}
