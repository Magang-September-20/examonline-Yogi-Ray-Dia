/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.entities;

import lombok.Data;

/**
 *
 * @author NAME
 */
@Data
public class RegisterInput {
    private String name;
    private String email;
    private String username;
    private String password;
}
