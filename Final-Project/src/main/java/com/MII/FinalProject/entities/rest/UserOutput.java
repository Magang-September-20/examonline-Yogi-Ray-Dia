/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.entities.rest;

import java.util.List;
import lombok.Data;

/**
 *
 * @author NAME
 */
@Data
public class UserOutput {
    private String id;
    private String name;
    private String email;
    private List<String> roles;
    
}
