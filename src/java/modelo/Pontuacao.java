/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

/**
 *
 * @author Leo Borges
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "Pontuacao.findAll", query = "SELECT p FROM Pontuacao p"),
    @NamedQuery(name = "Pontuacao.findFilter", query = "select p from Pontuacao p" +
            " where UPPER(p.pontuacao) like :filtro")
})
public class Pontuacao implements Serializable {


    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    @ManyToOne
    private Turma turma;
    private Integer pontuacao;
    @ManyToOne
    private Ano ano;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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
        if (!(object instanceof Pontuacao)) {
            return false;
        }
        Pontuacao other = (Pontuacao) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Pontuacao[ id=" + id + " ]";
    }

    public Turma getTurma() {
        return turma;
    }

    public void setTurma(Turma turma) {
        this.turma = turma;
    }

    public Integer getPontuacao() {
        return pontuacao;
    }

    public void setPontuacao(Integer pontuacao) {
        this.pontuacao = pontuacao;
    }

    public Ano getAno() {
        return ano;
    }

    public void setAno(Ano ano) {
        this.ano = ano;
    }
    
}
