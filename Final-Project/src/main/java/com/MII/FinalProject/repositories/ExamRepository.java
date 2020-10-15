/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.repositories;

import com.MII.FinalProject.entities.Exam;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author yosef
 */
@Repository
public interface ExamRepository extends JpaRepository<Exam, Integer> {
    
    @Query(value = "SELECT COUNT(*) FROM exam WHERE has_passed=1", nativeQuery = true)
    Integer countCandidate();
    
    @Query(value = "SELECT * FROM exam WHERE exam.user LIKE ?1", nativeQuery = true)
    public List<Exam> getPerId(Integer id);
    
    @Transactional
    @Query(value = "SELECT * FROM exam WHERE code LIKE ?1%", nativeQuery = true)
    public List<Exam> getAllCondidate(String id);
    
    @Modifying
    @Transactional
    @Query(value = "UPDATE exam SET start=DATE_ADD(NOW(), INTERVAL 0 DAY) WHERE code=?1", nativeQuery = true)
    void updateUseCode(String code);
}
