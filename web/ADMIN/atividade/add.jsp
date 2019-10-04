<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../cabecalho.jsp" %>
<main class="main">
    <!-- Breadcrumb-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">Atividade</li>
        <li class="breadcrumb-item">
            <a href="AtividadeWS">Listar</a>
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
                      <form action="AtividadeWS" method="post">
                      <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Atividade</span>
                          </div>
                          <input type="text"  name="txtAtividade" class="form-control">
                         
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Descrição</span>
                          </div>
                          <input type="text"  name="txtDescricao" class="form-control">
                         
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Horario</span>
                          </div>
                          <input type="text"  name="txtHorario" class="form-control">
                         
                        </div>
                      </div>
                          
                      <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Localidade</span>
                          </div>
                          <input type="text"  name="txtLocalidade" class="form-control">
                         
                        </div>
                      </div>    
                     
                      <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Data</span>
                          </div>
                          <input type="text"  name="txtDia" class="form-control">
                         
                        </div>
                      </div>
                      
                       <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">1°</span>
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
                            <span class="input-group-text" style="color: #3ea662">2°</span>
                          </div>
                          <select name="txtTurma2">
                         <c:forEach items="${turma}" var="obj">
                                <option value="${obj.id}">${obj.turma}</option>
                          </c:forEach>
                        </select><br><br>
                         
                        </div>
                      </div>
                          
                      <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">3°</span>
                          </div>
                          <select name="txtTurma3">
                         <c:forEach items="${turma}" var="obj">
                                <option value="${obj.id}">${obj.turma}</option>
                          </c:forEach>
                        </select><br><br>
                         
                        </div>
                      </div>
                         
                      <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">4°</span>
                          </div>
                          <select name="txtTurma4">
                         <c:forEach items="${turma}" var="obj">
                                <option value="${obj.id}">${obj.turma}</option>
                          </c:forEach>
                        </select><br><br>
                         
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
