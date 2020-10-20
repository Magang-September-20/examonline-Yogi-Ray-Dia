/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.repositories;

import com.MII.FinalProject.entities.UserAnswer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author nathanray
 */
@Repository
public interface UserAnswerRepository extends JpaRepository<UserAnswer, Integer> {
    
    @Query(value = "SELECT COUNT(user_answer.id) FROM user_answer INNER JOIN question ON user_answer.user_answer = question.answer WHERE user_answer.exam = ?1 AND user_answer.question = question.id;", nativeQuery = true)
    Integer calculateScore(Integer exam);
    
    @Query(value = "SELECT exam.id FROM exam INNER JOIN user_answer ON exam.id = user_answer.exam WHERE exam.code = ?1 LIMIT 1;", nativeQuery = true)
    Integer getExamId(String code);
    
    @Modifying
    @Transactional
    @Query(value = "UPDATE exam SET score = ?1, grade = ?2, end = DATE_ADD(NOW(), INTERVAL 0 DAY) WHERE exam.code = ?3", nativeQuery = true)
    void updateExam(Float score, String grade, String code);
    
    @Modifying
    @Transactional
    @Query(value = "UPDATE exam SET exam.has_passed = ?1 WHERE exam.code = ?2", nativeQuery = true)
    void updateHasPassed(Integer option, String code);
    
}   
