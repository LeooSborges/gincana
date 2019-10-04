/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import modelo.Turma;

/**
 *
 * @author Leo Borges
 */
public class TurmaDAO extends GenericDAO<Turma, Integer>{
    
    public TurmaDAO(){
        super(Turma.class);
    }
    
    public List<Turma> listar(String filtro){
        return em.createNamedQuery("Turma.findFilter").setParameter("filtro","%" + filtro.toUpperCase() + "%").getResultList();
    }    
    
}
