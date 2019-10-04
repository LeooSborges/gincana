/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

/**
 *
 * @author Leo Borges
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "Atividade.findAll", query = "SELECT a FROM Atividade a"),
    @NamedQuery(name = "Atividade.findFilter", query = "select a from Atividade a" +
            " where UPPER(a.atividade) like :filtro")
})
public class Atividade implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    private String atividade;
    private String descricao;
    private String horario;
    private String localidade;
    private String dia;
    
    

    @ManyToMany
    private List<Turma> turma;

    private String primeiro;
    
    private String segundo;
     
    private String terceiro;
      
    private String quarto;

    public String getPrimeiro() {
        return primeiro;
    }

    public void setPrimeiro(String primeiro) {
        this.primeiro = primeiro;
    }

    public String getSegundo() {
        return segundo;
    }

    public void setSegundo(String segundo) {
        this.segundo = segundo;
    }

    public String getTerceiro() {
        return terceiro;
    }

    public void setTerceiro(String terceiro) {
        this.terceiro = terceiro;
    }

    public String getQuarto() {
        return quarto;
    }

    public void setQuarto(String quarto) {
        this.quarto = quarto;
    }
    
    
    
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
        if (!(object instanceof Atividade)) {
            return false;
        }
        Atividade other = (Atividade) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Atividade[ id=" + id + " ]";
    }

    public String getAtividade() {
        return atividade;
    }

    public void setAtividade(String atividade) {
        this.atividade = atividade;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    public String getLocalidade() {
        return localidade;
    }

    public void setLocalidade(String localidade) {
        this.localidade = localidade;
    }

    public String getDia() {
        return dia;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }



//    public Turma getP2() {
//        return p2;
//    }
//
//    public void setP2(Turma p2) {
//        this.p2 = p2;
//    }
//
//    public Turma getP3() {
//        return p3;
//    }
//
//    public void setP3(Turma p3) {
//        this.p3 = p3;
//    }
//
//    public Turma getP4() {
//        return p4;
//    }
//
//    public void setP4(Turma p4) {
//        this.p4 = p4;
//    }

    public List<Turma> getTurma() {
        return turma;
    }

    public void setTurma(List<Turma> turma) {
        this.turma = turma;
    }


    
}
