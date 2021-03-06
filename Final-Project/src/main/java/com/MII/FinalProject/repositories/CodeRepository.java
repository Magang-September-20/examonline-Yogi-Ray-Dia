/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.repositories;

import com.MII.FinalProject.entities.Code;
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
public interface CodeRepository extends JpaRepository<Code, String>{
    
    @Query(value = "SELECT COUNT(*) FROM code", nativeQuery = true)
    Integer countRegistration();
    
    @Query(value = "SELECT * FROM code INNER JOIN exam ON code.code=exam.code ORDER BY exam.date DESC LIMIT 6", nativeQuery = true)
    List<Code> recentRegister();
    
    @Query(value = "SELECT * FROM code INNER JOIN exam ON code.code=exam.code WHERE is_sent=0 ORDER BY exam.date DESC LIMIT 3", nativeQuery = true)
    List<Code> notif();
    
    @Query(value = "SELECT COUNT(*) FROM code WHERE is_sent=0", nativeQuery = true)
    Integer notifCount();
    
    @Modifying
    @Transactional
    @Query(value = "UPDATE code SET is_sent=1, expired_date=DATE_ADD(NOW(), INTERVAL 1 DAY) WHERE code=?1", nativeQuery = true)
    void sendMail(String code);
    
    @Query(value = "SELECT COUNT(*) FROM code WHERE code=?1 AND user=?2 AND is_sent=1 AND is_used=0", nativeQuery = true)
    Integer verifyCode(String code, int user);
    
    @Modifying
    @Transactional
    @Query(value = "UPDATE code SET is_used=1 WHERE code=?1", nativeQuery = true)
    void updateUseCode(String code);
    
    @Query(value ="SELECT COUNT(*) FROM code WHERE code=?1", nativeQuery = true)
    Integer checkCode(String code);
}
