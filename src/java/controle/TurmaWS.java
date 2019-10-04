/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.TurmaDAO;
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
import modelo.Turma;

/**
 *
 * @author dappo
 */
@WebServlet(name = "TurmaWS", urlPatterns = {"/ADMIN/turma/TurmaWS"})
public class TurmaWS extends HttpServlet {

    private TurmaDAO dao;
    private Turma obj;
    private String pagina;
    private String acao;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        acao = request.getParameter("acao");
        List<Turma> lista = null;
        String id;
        switch (String.valueOf(acao)) {

            case "del":
                id = request.getParameter("id");
                dao = new TurmaDAO();
                pagina = "index.jsp";
                obj = dao.buscarPorChavePrimaria(Integer.parseInt(id));
                Boolean deucerto = dao.excluir(obj);
                if (deucerto) {
                    lista = dao.listar();
                    request.setAttribute("lista", lista);
                    request.setAttribute("msg", "Excluído com sucesso");
                } else {
                    request.setAttribute("msg", "Erro ao excluir");
                }
                break;

            case "upd":
                id = request.getParameter("id");
                dao = new TurmaDAO();
                Turma obj = dao.buscarPorChavePrimaria(Integer.parseInt(id));
                request.setAttribute("obj", obj);
                pagina = "upd.jsp";
                break;

            case "filter":
                pagina = "index.jsp";

                //ega a informação digitada pelo usuário do sistema
                String filtro = request.getParameter("txtFiltro");
                List<Turma> lista2 = this.listar(filtro);
                request.setAttribute("lista", lista2);
                break;

            default:
                dao = new TurmaDAO();
                if (request.getParameter("filtro") != null) {
                    try {
                        lista = dao.listar(request.getParameter("filtro"));
                    } catch (Exception ex) {
                        Logger.getLogger(TurmaWS.class.getName()).log(Level.SEVERE, null, ex);
                    }
                } else {
                    lista = dao.listar();
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
    
    public List<Turma> listar(String filtro){
        List<Turma> lista;
        TurmaDAO dao = new TurmaDAO();
        lista = dao.listar(filtro);
        dao.fecharConexao();
        return lista;
        
    }
        
    
@Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String msg;
            //verificar campos obrigatórios
            if(request.getParameter("txtTurma") == null&&
               request.getParameter("txtCor") == null&&
               request.getParameter("txtSemestre") == null&&
               request.getParameter("txtCurso") == null&&
               request.getParameter("txtHino") == null&&
               request.getParameter("txtFoto") == null&&     
               request.getParameter("txtEmblema") == null     
            ){ 
                msg = "Campos obrigatórios não informados";
            }
            else{
                dao = new TurmaDAO();
                obj = new Turma();
                //preencho o objeto com o que vem do post
                
                Boolean deucerto;
                
                //se veio com a chave primaria então tem q alterar
                if(request.getParameter("txtId")!= null){
                    obj = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("txtId")));
                    obj.setTurma(request.getParameter("txtTurma"));
                    obj.setCor(request.getParameter("txtCor"));
                    obj.setSemestre(Integer.parseInt(request.getParameter("txtSemestre")));
                    obj.setCurso(request.getParameter("txtCurso"));
                    obj.setHino(request.getParameter("txtHino"));
                    obj.setEndFoto(request.getParameter("txtFoto"));
                    obj.setEndEmblema(request.getParameter("txtEmblema"));
                    deucerto = dao.alterar(obj);
                    pagina="upd-ok.jsp";
                }
                else{
                    obj.setTurma(request.getParameter("txtTurma"));
                    obj.setCor(request.getParameter("txtCor"));
                    obj.setSemestre(Integer.parseInt(request.getParameter("txtSemestre")));
                    obj.setCurso(request.getParameter("txtCurso"));
                    obj.setHino(request.getParameter("txtHino"));
                    obj.setEndFoto(request.getParameter("txtFoto"));
                    obj.setEndEmblema(request.getParameter("txtEmblema"));
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
            dao.fecharConexao();
            request.setAttribute("msg", msg);
            RequestDispatcher destino = request.getRequestDispatcher(pagina);
            destino.forward(request, response);
    }


}
