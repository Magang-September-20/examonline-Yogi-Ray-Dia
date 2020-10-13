/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.MII.FinalProject.entities;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author yosef
 */
@Entity
@Table(name = "module")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Module.findAll", query = "SELECT m FROM Module m")
    , @NamedQuery(name = "Module.findById", query = "SELECT m FROM Module m WHERE m.id = :id")
    , @NamedQuery(name = "Module.findByName", query = "SELECT m FROM Module m WHERE m.name = :name")
    , @NamedQuery(name = "Module.findByPassingScore", query = "SELECT m FROM Module m WHERE m.passingScore = :passingScore")
    , @NamedQuery(name = "Module.findByNumberOfQuestion", query = "SELECT m FROM Module m WHERE m.numberOfQuestion = :numberOfQuestion")
    , @NamedQuery(name = "Module.findByDuration", query = "SELECT m FROM Module m WHERE m.duration = :duration")})
public class Module implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "id")
    private String id;
    @Basic(optional = false)
    @Column(name = "name")
    private String name;
    @Basic(optional = false)
    @Column(name = "passing_score")
    private int passingScore;
    @Basic(optional = false)
    @Column(name = "number_of_question")
    private int numberOfQuestion;
    @Basic(optional = false)
    @Column(name = "duration")
    private int duration;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "module", fetch = FetchType.LAZY)
    private List<Code> codeList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "module", fetch = FetchType.LAZY)
    private List<Question> questionList;

    public Module() {
    }

    public Module(String id) {
        this.id = id;
    }

    public Module(String id, String name, int passingScore, int numberOfQuestion, int duration) {
        this.id = id;
        this.name = name;
        this.passingScore = passingScore;
        this.numberOfQuestion = numberOfQuestion;
        this.duration = duration;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPassingScore() {
        return passingScore;
    }

    public void setPassingScore(int passingScore) {
        this.passingScore = passingScore;
    }

    public int getNumberOfQuestion() {
        return numberOfQuestion;
    }

    public void setNumberOfQuestion(int numberOfQuestion) {
        this.numberOfQuestion = numberOfQuestion;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    @XmlTransient
    public List<Code> getCodeList() {
        return codeList;
    }

    public void setCodeList(List<Code> codeList) {
        this.codeList = codeList;
    }

    @XmlTransient
    public List<Question> getQuestionList() {
        return questionList;
    }

    public void setQuestionList(List<Question> questionList) {
        this.questionList = questionList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Module)) {
            return false;
        }
        Module other = (Module) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.MII.FinalProject.entities.Module[ id=" + id + " ]";
    }

}
