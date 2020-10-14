/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.services;

import com.MII.FinalProject.entities.Module;
import com.MII.FinalProject.repositories.ModuleRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author NAME
 */
@Service
public class ModuleService {
    
    @Autowired
    ModuleRepository moduleService;
    
    public List<Module> getAll(){
        return moduleService.findAll();
    }
}
