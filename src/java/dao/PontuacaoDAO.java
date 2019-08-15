/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import modelo.Pontuacao;

/**
 *
 * @author Leo Borges
 */
public class PontuacaoDAO extends GenericDAO<Pontuacao, Integer>{
    
    public PontuacaoDAO(){
        super(Pontuacao.class);
    }
    
}
