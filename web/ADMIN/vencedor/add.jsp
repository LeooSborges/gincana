<%@include file="../cabecalho.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<main class="main">
    <!-- Breadcrumb-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">Jogos</li>
        <li class="breadcrumb-item">
            <a href="JogosWS">Listar</a>
        </li>

    </ol>
    <div class="container-fluid">
        <div class="row">
           <div class="row">
              <div class="col-lg-auto">
                <div class="card">
                  <div class="card-header">
                    Cadastro
                  </div>
                  <div class="card-body">
                      <form action="JogosWS" method="post">
                      <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Titulo do jogo</span>
                          </div>
                          <input type="text"  name="txtTitulo" class="form-control">
                         
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Lancamento</span>
                          </div>
                          <input type="text"  name="txtLancamento" class="form-control">
                          
                        </div>
                      </div>
                           <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Classificação</span>
                          </div>
                          <input type="text"  name="txtClassificacao" class="form-control">
                          
                        </div>
                      </div>
                          <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Número de players</span>
                          </div>
                          <input type="text"  name="txtNumPlayers" class="form-control">
                          
                        </div>
                      </div>
                             <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Preço</span>
                          </div>
                          <input type="text"  name="txtPreco" class="form-control">
                          
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Desenvolvedora</span>
                          </div>
                            <select name ="txtDesenvolvedora"  > 
                                <c:forEach items ="${ListaDesenvolvedora}" var ="obj">
                                <option value = "${obj.id}">${obj.nome}</option>
                                </c:forEach>
                            </select>>
                         
                        </div>
                      </div>
                          
                             <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Genero</span>
                          </div>
                            <select name ="txtGenero"  > 
                                  <c:forEach items ="${ListaGenero}" var ="obj">
                                <option value = "${obj.id}">${obj.nome}</option>
                                </c:forEach>
                               
                            </select>>
                         
                        </div>
                      </div>
                          
                             <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Plataforma</span>
                          </div>
                            <select name ="txtPlataforma"  > 
                                  <c:forEach items ="${ListaPlataforma}" var ="obj">
                                <option value = "${obj.id}">${obj.nome}</option>
                                </c:forEach>
                             
                                
                            </select>>
                         
                        </div>
                      </div>
                          <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Disponibilidade</span>
                          </div>
                          <input type="radio"  name="txtDisponibilidade" class="form-control">
                          
                        </div>
                      </div>
                      <div class="form-group form-actions">
                        <button type="submit" class="btn btn-sm btn-primary">Enviar</button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
              

            </div>

        <!--/.row-->
    </div>
</main>



<%@include file="../rodape.jsp" %>
