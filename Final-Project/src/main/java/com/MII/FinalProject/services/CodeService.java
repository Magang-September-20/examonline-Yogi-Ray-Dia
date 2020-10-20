/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.services;

import com.MII.FinalProject.entities.Code;
import com.MII.FinalProject.repositories.CodeRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author yosef
 */
@Service
public class CodeService {
    
    @Autowired CodeRepository repository;
    
    public Code save(Code code){
        return repository.save(code);
    }
    
    public Integer countRegistration() {
        return repository.countRegistration();
    }
    
    public List<Code> recentRegister(){
        return repository.recentRegister();
    }
    
    public List<Code> notif(){
        return repository.notif();
    }
    
    public Integer notifCount(){
        return repository.notifCount();
    }
    
    public Integer verifyCode(String code, int user){
        return repository.verifyCode(code, user);
    }
    
    public void updateUseCode(String code){
       repository.updateUseCode(code);
    }
    
    public Integer checkCode(String code) {
        return repository.checkCode(code);
    }
    
}
