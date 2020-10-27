/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author Yogi
 */
@Entity
@Table(name = "testimonial")
@NamedQueries({
    @NamedQuery(name = "Testimonial.findAll", query = "SELECT t FROM Testimonial t")})
public class Testimonial implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "user")
    private Integer user;
    @Basic(optional = false)
    @Column(name = "profession")
    private String profession;
    @Basic(optional = false)
    @Column(name = "subtext")
    private String subtext;
    @JoinColumn(name = "user", referencedColumnName = "id", insertable = false, updatable = false)
    @OneToOne(optional = true, fetch = FetchType.LAZY)
    private UserLocal userLocal;

    public Testimonial() {
    }

    public Testimonial(Integer user) {
        this.user = user;
    }

    public Testimonial(Integer user, String profession, String subtext) {
        this.user = user;
        this.profession = profession;
        this.subtext = subtext;
    }

    public Integer getUser() {
        return user;
    }

    public void setUser(Integer user) {
        this.user = user;
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public String getSubtext() {
        return subtext;
    }

    public void setSubtext(String subtext) {
        this.subtext = subtext;
    }

    public UserLocal getUserLocal() {
        return userLocal;
    }

    public void setUserLocal(UserLocal userLocal) {
        this.userLocal = userLocal;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (user != null ? user.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Testimonial)) {
            return false;
        }
        Testimonial other = (Testimonial) object;
        if ((this.user == null && other.user != null) || (this.user != null && !this.user.equals(other.user))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.MII.FinalProject.entities.Testimonial[ user=" + user + " ]";
    }
    
}
