/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import modelo.Colocacao;

/**
 *
 * @author Leo Borges
 */
public class ColocacaoDAO extends GenericDAO<Colocacao, Integer>{
    
    public ColocacaoDAO(){
        super(Colocacao.class);
    }
    
}
