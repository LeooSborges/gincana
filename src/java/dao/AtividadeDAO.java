/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import modelo.Atividade;

/**
 *
 * @author Leo Borges
 */
public class AtividadeDAO extends GenericDAO<Atividade, Integer>{
    
    public AtividadeDAO(){
        super(Atividade.class);
    }
    
    public List<Atividade> listar(String filtro){
        return em.createNamedQuery("Atividade.findFilter").setParameter("filtro","%" + filtro.toUpperCase() + "%").getResultList();
    }    
}