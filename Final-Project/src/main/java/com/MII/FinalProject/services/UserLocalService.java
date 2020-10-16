/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.services;

import com.MII.FinalProject.entities.UserLocal;
import com.MII.FinalProject.repositories.UserLocalRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author NAME
 */
@Service
public class UserLocalService {
    
    @Autowired
    UserLocalRepository repository;
    
    public List<UserLocal> getAll() {
        return repository.findAll();
    }
    
    public UserLocal getById(Integer id){
        return repository.findById(id).get();
    }
}
