/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MII.FinalProject.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author yosef
 */
@Entity
@Table(name = "code")
@NamedQueries({
    @NamedQuery(name = "Code.findAll", query = "SELECT c FROM Code c")})
public class Code implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "code")
    private String code;
    @Basic(optional = false)
    @Column(name = "expired_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date expiredDate;
    @Basic(optional = false)
    @Column(name = "is_sent")
    private boolean isSent;
    @Basic(optional = false)
    @Column(name = "is_used")
    private boolean isUsed;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "code", fetch = FetchType.LAZY)
    private Exam exam;
    @JoinColumn(name = "user", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private User user;
    @JoinColumn(name = "module", referencedColumnName = "id")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Module module;

    public Code() {
    }

    public Code(String code) {
        this.code = code;
    }

    public Code(String code, Date expiredDate, boolean isSent, boolean isUsed) {
        this.code = code;
        this.expiredDate = expiredDate;
        this.isSent = isSent;
        this.isUsed = isUsed;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Date getExpiredDate() {
        return expiredDate;
    }

    public void setExpiredDate(Date expiredDate) {
        this.expiredDate = expiredDate;
    }

    public boolean getIsSent() {
        return isSent;
    }

    public void setIsSent(boolean isSent) {
        this.isSent = isSent;
    }

    public boolean getIsUsed() {
        return isUsed;
    }

    public void setIsUsed(boolean isUsed) {
        this.isUsed = isUsed;
    }

    public Exam getExam() {
        return exam;
    }

    public void setExam(Exam exam) {
        this.exam = exam;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Module getModule() {
        return module;
    }

    public void setModule(Module module) {
        this.module = module;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (code != null ? code.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Code)) {
            return false;
        }
        Code other = (Code) object;
        if ((this.code == null && other.code != null) || (this.code != null && !this.code.equals(other.code))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return ""+ code;
    }
    
}
