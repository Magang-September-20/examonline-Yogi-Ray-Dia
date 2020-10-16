/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.repositories;

import com.MII.FinalProject.entities.Question;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author yosef
 */
@Repository
public interface QuestionRepository extends JpaRepository<Question, Integer> {
    
    @Query(value = "SELECT COUNT(*) FROM question", nativeQuery = true)
    Integer countQuestion();
    
    @Query(value = "SELECT COUNT(*) FROM question WHERE module =?1", nativeQuery = true)
    Integer countByModule(String module);
    
    @Transactional
    @Query(value = "SELECT * FROM question WHERE module =?1", nativeQuery = true)
    public List<Question> getQuestionWhere(String id);
}
