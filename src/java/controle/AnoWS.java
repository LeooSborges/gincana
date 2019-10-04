/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.AnoDAO;
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

/**
 *
 * @author dappo
 */
@WebServlet(name = "AnoWS", urlPatterns = {"/ADMIN/ano/AnoWS"})
public class AnoWS extends HttpServlet {

    private AnoDAO dao;
    private Ano obj;
    private String pagina;
    private String acao;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        acao = request.getParameter("acao");
        List<Ano> lista = null;
        String id;
        switch (String.valueOf(acao)) {

            case "del":
                id = request.getParameter("id");
                dao = new AnoDAO();
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
                dao = new AnoDAO();
                Ano obj = dao.buscarPorChavePrimaria(Integer.parseInt(id));
                request.setAttribute("obj", obj);
                pagina = "upd.jsp";
                break;

//            case "filter":
//                pagina = "index.jsp";
//
//                //ega a informação digitada pelo usuário do sistema
//                String filtro = request.getParameter("txtFiltro");
//                List<Ano> lista2 = this.listar(filtro);
//                request.setAttribute("lista", lista2);
//                break;

            default:
                dao = new AnoDAO();
                if (request.getParameter("filtro") != null) {
                    try {
                        lista = dao.listar(request.getParameter("filtro"));
                    } catch (Exception ex) {
                        Logger.getLogger(AnoWS.class.getName()).log(Level.SEVERE, null, ex);
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
    
    public List<Ano> listar(String filtro){
        List<Ano> lista;
        AnoDAO dao = new AnoDAO();
        lista = dao.listar(filtro);
        dao.fecharConexao();
        return lista;
        
    }
        
    
@Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String msg;
            //verificar campos obrigatórios
            if(request.getParameter("txtAno") == null   
            ){
                msg = "Campos obrigatórios não informados";
            }
            else{
                dao = new AnoDAO();
                obj = new Ano();
                //preencho o objeto com o que vem do post
                
                Boolean deucerto;
                
                //se veio com a chave primaria então tem q alterar
                if(request.getParameter("txtId")!= null){
                    obj = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("txtId")));
                    obj.setAno(Integer.parseInt(request.getParameter("txtAno")));
                    deucerto = dao.alterar(obj);
                    pagina="upd-ok.jsp";
                }
                else{
                    obj.setAno(Integer.parseInt(request.getParameter("txtAno")));
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
