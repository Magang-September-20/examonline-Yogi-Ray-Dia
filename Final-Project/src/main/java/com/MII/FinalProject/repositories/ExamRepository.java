/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.repositories;

import com.MII.FinalProject.entities.Exam;
import java.sql.Timestamp;
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

    @Query(value = "SELECT exam.id, exam.start, exam.end, exam.score, exam.grade, exam.has_passed, date, exam.code, exam.user FROM exam WHERE start IS NOT NULL AND exam.user LIKE ?1 AND exam.code LIKE ?2%", nativeQuery = true)
    public List<Exam> getPerId(Integer id, String module);

    @Transactional
    @Query(value = "SELECT * FROM exam WHERE grade IS NOT NULL AND score IS NOT NULL AND code LIKE ?1%", nativeQuery = true)
    public List<Exam> getAllCondidate(String id);

    @Modifying
    @Transactional
    @Query(value = "INSERT INTO exam (code, date, user) VALUES (?1 , DATE_ADD(NOW(), INTERVAL 0 DAY) , ?2)", nativeQuery = true)
    void registerExam(String code, String user);

    @Modifying
    @Transactional
    @Query(value = "UPDATE exam SET start=DATE_ADD(NOW(), INTERVAL 0 DAY) WHERE code=?1", nativeQuery = true)
    void updateUseCode(String code);

    @Transactional
    @Query(value = "SELECT COUNT(*) FROM exam WHERE user=?1 AND start IS NOT NULL", nativeQuery = true)
    Integer countHistoryExam(int id);

    @Query(value = "SELECT score FROM exam WHERE code = ?1", nativeQuery = true)
    String getScore(String code);

    @Query(value = "SELECT grade FROM exam WHERE code = ?1", nativeQuery = true)
    String getGrade(String code);

    @Query(value = "SELECT has_passed FROM exam WHERE code = ?1", nativeQuery = true)
    Boolean getHasPassed(String code);
    
    @Query(value = "SELECT * FROM exam WHERE code = ?1", nativeQuery = true)
    Exam getExam(String code);

    @Query(value = "SELECT start FROM exam WHERE code = ?1", nativeQuery = true)
    String getStart(String code);

    @Query(value = "SELECT end FROM exam WHERE code = ?1", nativeQuery = true)
    String getEnd(String code);

    @Query(value = "SELECT DATE_SUB(?1, INTERVAL 0 HOUR)", nativeQuery = true)
    String subTime(String time);
    
    @Query(value = "SELECT TIMESTAMPDIFF(Minute, ?1, ?2)", nativeQuery = true)
    Integer getDuration(String start, String end);
    
    @Query(value = "SELECT COUNT(*) FROM exam WHERE has_passed=1 AND code LIKE ?1%", nativeQuery = true)
    Integer getPassed(String code);
    
    @Query(value = "SELECT COUNT(*) FROM exam WHERE has_passed=0 AND start IS NOT NULL AND code LIKE ?1%", nativeQuery = true)
    Integer getFailed(String code);
    
}
