/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.repositories;

import com.MII.FinalProject.entities.UserLocal;
import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author NAME
 */
@Repository
public interface UserLocalRepository extends JpaRepository<UserLocal, Integer>{
    
    @Transactional
    @Modifying
    @Query(value = "UPDATE user SET is_active=?1 WHERE id=?2", nativeQuery = true)
    public void updateUser(boolean isActive, int id);
}
