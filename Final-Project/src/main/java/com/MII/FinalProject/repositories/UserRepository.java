/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.repositories;

import com.MII.FinalProject.entities.UserLocal;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author yosef
 */
@Repository
public interface UserRepository extends JpaRepository<UserLocal, Integer> {
    
    @Query(value = "SELECT COUNT(*) FROM user", nativeQuery = true)
    Integer countUser();
}
