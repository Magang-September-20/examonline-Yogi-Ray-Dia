/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.repositories;

import com.MII.FinalProject.entities.Module;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author NAME
 */
@Repository
public interface ModuleRepository extends JpaRepository<Module, String> {

    @Query(value = "SELECT number_of_question FROM module WHERE id = ?1", nativeQuery = true)
    Integer getNumberOfQuestions(String id);

    @Query(value = "SELECT module.passing_score FROM `module` WHERE id = ?1", nativeQuery = true)
    Integer getPassingScore(String id);

    @Query(value = "SELECT id FROM module", nativeQuery = true)
    String[] getIdModule();
    
    @Query(value = "SELECT name FROM module WHERE id = ?1", nativeQuery = true)
    String getModuleName(String id);
}
