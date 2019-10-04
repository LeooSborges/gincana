/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.AnoDAO;
import dao.TurmaDAO;
import dao.PontuacaoDAO;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Ano;
import modelo.Turma;
import modelo.Pontuacao;

/**
 *
 * @author dappo
 */
@WebServlet(name = "PontuacaoWS", urlPatterns = {"/ADMIN/pontuacao/PontuacaoWS","/SITE/PontuacaoWS"})
public class PontuacaoWS extends HttpServlet {
   
    private Pontuacao obj;
    private String pagina;
    private String acao;
     
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Pontuacao> lista = null;
        acao = request.getParameter("acao");
        String id;
        PontuacaoDAO dao;
        switch(String.valueOf(acao)){
            case "add":
                request.setAttribute("turma", this.listaTurma());
                request.setAttribute("ano", this.listaAno());
                pagina = "add.jsp";
                break;
            case "del":
                id = request.getParameter("id");
                dao = new PontuacaoDAO();
                pagina = "index.jsp";
                obj = dao.buscarPorChavePrimaria(Integer.parseInt(id));
                Boolean deucerto = dao.excluir(obj);
                if(deucerto){   
                    request.setAttribute("lista", this.listaPontuacoes());
                    request.setAttribute("msg", "Excluído com sucesso");
                }
                else{
                    request.setAttribute("msg", "Erro ao excluir");
                }
                break;
            case "upd":
                id = request.getParameter("id");
                dao = new PontuacaoDAO();
                Pontuacao obj = dao.buscarPorChavePrimaria(Integer.parseInt(id));
                request.setAttribute("obj", obj);
                request.setAttribute("turma", this.listaTurma());
                request.setAttribute("ano", this.listaAno());
                pagina = "upd.jsp";
                break;
            case "listPontuacoes":
                request.setAttribute("turma", this.listaTurma());
                request.setAttribute("ano", this.listaAno());
                
                try {
                    if(request.getParameter("turma")!=null){
                        Turma turma;
                        TurmaDAO tdao = new TurmaDAO();
                        turma = tdao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("turma")));
                        lista = turma.getPontuacoes();
                    }else if(request.getParameter("ano")!=null){
                        Ano ano;
                        AnoDAO adao = new AnoDAO();
                        ano = adao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("ano")));
                        lista = ano.getPontuacoes();
                    }else{
                        lista = this.listaPontuacoes();
                    }
                } catch (Exception ex) {
                    Logger.getLogger(PontuacaoWS.class.getName()).log(Level.SEVERE, null, ex);
                }
                request.setAttribute("lista", lista);
                pagina = "index.jsp";
                break;
            default:
                dao = new PontuacaoDAO();
                if (request.getParameter("filtro") != null) {
                    try {
                        lista = dao.listar(request.getParameter("filtro"));
                    } catch (Exception ex) {
                        Logger.getLogger(PontuacaoWS.class.getName()).log(Level.SEVERE, null, ex);
                    }
                } else {
                    lista = this.listaPontuacoes();
                }
                //pra onde deve ser redirecionada a página
                pagina = "index.jsp";
                //passar a listagem para a página
                request.setAttribute("lista", lista);
                break;
                
        }
        RequestDispatcher destino = request.getRequestDispatcher(pagina);
        destino.forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            TurmaDAO tdao = new TurmaDAO();
            AnoDAO adao = new AnoDAO();
            PontuacaoDAO dao;
            Turma turma;
            Ano ano;
            String msg;
            request.setCharacterEncoding("UTF-8");
            Integer id_turma = Integer.parseInt(request.getParameter("txtTurma"));
            Integer id_ano = Integer.parseInt(request.getParameter("txtAno"));
            Integer pontuacao = Integer.parseInt(request.getParameter("txtPontuacao"));
            //verificar campos obrigatórios
            if(request.getParameter("txtTurma") == null){
                msg = "Campos obrigatórios não informados";
            }
            else{
                dao = new PontuacaoDAO();
                obj = new Pontuacao();
                turma = tdao.buscarPorChavePrimaria(id_turma);
                ano = adao.buscarPorChavePrimaria(id_ano);
                
                //preencho o objeto com o que vem do post
                
                Boolean deucerto;
                
                //se veio com a chave primaria então tem q alterar
                if(request.getParameter("txtId")!= null){
                    obj = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("txtId")));
                    obj.setTurma(turma);
                    obj.setAno(ano);
                    obj.setPontuacao(pontuacao);
                    deucerto = dao.alterar(obj);
                    pagina="upd-ok.jsp";
                }
                else{
                    obj.setTurma(turma);
                    obj.setAno(ano);
                    obj.setPontuacao(pontuacao);
                    deucerto = dao.incluir(obj);
                    pagina="add-ok.jsp";   
                }
                if(deucerto){
                    msg = "Operação realizada com sucesso";    
                }
                else{
                    msg = "Erro ao realizar a operação";
                }
            }
            
            request.setAttribute("msg", msg);
            RequestDispatcher destino = request.getRequestDispatcher(pagina);
            destino.forward(request, response);
    }

    private List<Turma> listaTurma() {
        TurmaDAO dao = new TurmaDAO();
        List<Turma> turmas = dao.listar();
        dao.fecharConexao();
        return turmas;
    }
   
    private List<Pontuacao> listaPontuacoes() {
        PontuacaoDAO dao = new PontuacaoDAO();
        List<Pontuacao> pontuacoes = dao.listar();
        dao.fecharConexao();
        return pontuacoes;
    }
    private List<Ano> listaAno() {
        AnoDAO dao = new AnoDAO();
        List<Ano> ano = dao.listar();
        dao.fecharConexao();
        return ano;
    }
    
}