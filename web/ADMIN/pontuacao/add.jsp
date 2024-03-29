<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../cabecalho.jsp" %>
<main class="main">
    <!-- Breadcrumb-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">Pontuacao</li>
        <li class="breadcrumb-item">
            <a href="PontuacaoWS">Listar</a>
        </li>

    </ol>
    <div class="container-fluid">
        <div class="row">
           <div class="row">
              <div class="col-lg-auto">
                <div class="card">
                  <div class="card-header" style="background-color: #3ea662; color: white; font-weight: bold">
                    Cadastro
                  </div>
                  <div class="card-body">
                      <form action="PontuacaoWS" method="post">
                      
                       <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Turma</span>
                          </div>
                          <select name="txtTurma">
                         <c:forEach items="${turma}" var="obj">
                                <option value="${obj.id}">${obj.turma}</option>
                          </c:forEach>
                        </select><br><br>
                         
                        </div>
                      </div>   
                          
                       <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Pontuacao</span>
                          </div>
                          <input type="text"  name="txtPontuacao" class="form-control">
                         
                        </div>
                      </div>
                      
                      
                      <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Ano</span>
                          </div>
                            <select name="txtAno">
                            <c:forEach items="${ano}" var="obj">
                                <option value="${obj.id}">${obj.ano}</option>
                            </c:forEach>    
                            </select><br><br>
                         
                        </div>
                      </div>
                              
                     
                      
<!--                      <div class="form-group-file">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" for="file">Alunos</span>
                          </div>
                          <input type="file" required name="txtFoto" class="form-control">
                         
                        </div>
                      </div>
                          
                      <div class="form-group-file">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" for="file">Emblema</span>
                          </div>
                          <input type="file" required name="txtEmblema" class="form-control">
                         
                        </div>
                      </div>    -->
                          
                     
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
