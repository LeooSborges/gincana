/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import modelo.Ano;

/**
 *
 * @author Leo Borges
 */
public class AnoDAO extends GenericDAO<Ano, Integer>{
    
    public AnoDAO(){
        super(Ano.class);
    }
        public List<Ano> listar(String filtro){
        return em.createNamedQuery("Ano.findFilter").setParameter("filtro","%" + filtro.toUpperCase() + "%").getResultList();
    } 
}
