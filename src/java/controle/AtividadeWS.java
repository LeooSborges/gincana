/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.AtividadeDAO;
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
import modelo.Atividade;
import modelo.Turma;

/**
 *
 * @author dappo
 */
@WebServlet(name = "AtividadeWS", urlPatterns = {"/ADMIN/atividade/AtividadeWS"})
public class AtividadeWS extends HttpServlet {

    private AtividadeDAO dao;
    private Atividade obj;
    private String pagina;
    private String acao;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        acao = request.getParameter("acao");
        List<Atividade> lista = null;
        String id;
        switch (String.valueOf(acao)) {
            case "add":
                request.setAttribute("turma", this.listaTurma());

                pagina = "add.jsp";
                break;
            case "del":
                id = request.getParameter("id");
                dao = new AtividadeDAO();
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
                dao = new AtividadeDAO();
                obj = dao.buscarPorChavePrimaria(Integer.parseInt(id));
                request.setAttribute("obj", obj);
                request.setAttribute("turma", this.listaTurma());

                pagina = "upd.jsp";
                break;

            case "filter":
                pagina = "index.jsp";

                //ega a informação digitada pelo usuário do sistema
                String filtro = request.getParameter("txtFiltro");
                List<Atividade> lista2 = this.listar(filtro);
                request.setAttribute("lista", lista2);
                break;

            case "listAtividades":
                request.setAttribute("turma", this.listaTurma());


                try {
                    if (request.getParameter("turma") != null) {
                        Turma turma;
                        TurmaDAO tdao = new TurmaDAO();
                        turma = tdao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("turma")));
                        lista = turma.getAtividades();

                        lista = this.listaAtividades();
                    }
                } catch (Exception ex) {
                    Logger.getLogger(PontuacaoWS.class.getName()).log(Level.SEVERE, null, ex);
                }
                request.setAttribute("lista", lista);
                pagina = "index.jsp";
                break;

            default:
                dao = new AtividadeDAO();
                if (request.getParameter("filtro") != null) {
                    try {
                        lista = dao.listar(request.getParameter("filtro"));
                    } catch (Exception ex) {
                        Logger.getLogger(AtividadeWS.class.getName()).log(Level.SEVERE, null, ex);
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

    public List<Atividade> listar(String filtro) {
        List<Atividade> lista;
        AtividadeDAO dao = new AtividadeDAO();
        lista = dao.listar(filtro);
        dao.fecharConexao();
        return lista;

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        TurmaDAO tdao = new TurmaDAO();
        AtividadeDAO dao;
        Turma turmaP = new Turma();
        Turma turmaS = new Turma();
        Turma turmaT = new Turma();
        Turma turmaQ = new Turma();

        String msg;
        request.setCharacterEncoding("UTF-8");
        String atividade = request.getParameter("txtAtividade");
        String descricao = request.getParameter("txtDescricao");
        String horario = request.getParameter("txtHorario");
        String localidade = request.getParameter("txtLocalidade");
        String dia = request.getParameter("txtDia");
        Integer id_turma = Integer.parseInt(request.getParameter("txtTurma"));
        Integer id_turma2 = Integer.parseInt(request.getParameter("txtTurma2"));
        Integer id_turma3 = Integer.parseInt(request.getParameter("txtTurma3")); 
        Integer id_turma4 = Integer.parseInt(request.getParameter("txtTurma4"));

        //verificar campos obrigatórios
        if (request.getParameter("txtAtividade") == null
                && request.getParameter("txtDescricao") == null
                && request.getParameter("txtHorario") == null
                && request.getParameter("txtLocalidade") == null
                && request.getParameter("txtDia") == null) {
            msg = "Campos obrigatórios não informados";
        } else {
            dao = new AtividadeDAO();
            obj = new Atividade();
            turmaP = tdao.buscarPorChavePrimaria(id_turma);
            turmaS = tdao.buscarPorChavePrimaria(id_turma2);
            turmaT = tdao.buscarPorChavePrimaria(id_turma3);
            turmaQ = tdao.buscarPorChavePrimaria(id_turma4);
            
            //preencho o objeto com o que vem do post
            Boolean deucerto;

            //se veio com a chave primaria então tem q alterar
            if (request.getParameter("txtId") != null) {
                obj = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("txtId")));
                obj.setAtividade(atividade);
                obj.setDescricao(descricao);
                obj.setHorario(horario);
                obj.setLocalidade(localidade);
                obj.setDia(dia);
                obj.setPrimeiro(turmaP.getTurma());
                obj.setSegundo(turmaS.getTurma());
                obj.setTerceiro(turmaT.getTurma());
                obj.setQuarto(turmaQ.getTurma());


                deucerto = dao.alterar(obj);
                pagina = "upd-ok.jsp";
            } else {
                obj.setAtividade(atividade);
                obj.setDescricao(descricao);
                obj.setHorario(horario);
                obj.setLocalidade(localidade);
                obj.setDia(dia);
                obj.setPrimeiro(turmaP.getTurma());
                obj.setSegundo(turmaS.getTurma());
                obj.setTerceiro(turmaT.getTurma());
                obj.setQuarto(turmaQ.getTurma());

                deucerto = dao.incluir(obj);
                pagina = "add-ok.jsp";
            }
            if (deucerto) {
                msg = "Operação realizada com sucesso";
            } else {
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

    private List<Atividade> listaAtividades() {
        AtividadeDAO dao = new AtividadeDAO();
        List<Atividade> atividades = dao.listar();
        dao.fecharConexao();
        return atividades;
    }

}
