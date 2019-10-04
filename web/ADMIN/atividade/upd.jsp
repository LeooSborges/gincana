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
                    Alteração
                  </div>
                  <div class="card-body">
                      <form action="AtividadeWS" method="post"> 
                        <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Id</span>
                          </div>
                            <input type="text"  value="${obj.id}" name="txtId" readonly class="form-control">
                         
                        </div>
                       </div>
                       <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Atividade</span>
                          </div>
                          <input type="text"  value="${obj.atividade}" name="txtAtividade" class="form-control">
                          
                        </div>     
                        </div>
                        <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Descrição</span>
                          </div>
                          <input type="text"  value="${obj.descricao}" name="txtDescricao" class="form-control">
                          
                        </div>     
                        </div>
                        <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Horario</span>
                          </div>
                          <input type="text"  value="${obj.horario}" name="txtHorario" class="form-control">
                          
                        </div>     
                        </div>
                        <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Localidade</span>
                          </div>
                          <input type="text"  value="${obj.localidade}" name="txtLocalidade" class="form-control">
                          
                        </div>     
                        </div>
                        <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Data</span>
                          </div>
                          <input type="text"  value="${obj.dia}" name="txtDia" class="form-control">
                          
                        </div>     
                        </div>
                           
                        <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">1°</span>
                          </div>
                        <select name="txtTurma">
                        
                            <c:forEach items="${turma}" var="objTurma">
                                <option value="${objTurma.id}" ${obj.turma.equals(objTurma)?'selected':''}> ${objTurma.turma}</option>
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
                        
                            <c:forEach items="${turma}" var="objTurma2">
                                <option value="${objTurma2.id}" ${obj.turma.equals(objTurma2)?'selected':''}> ${objTurma2.turma}</option>
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
                        
                            <c:forEach items="${turma}" var="objTurma3">
                                <option value="${objTurma3.id}" ${obj.turma.equals(objTurma3)?'selected':''}> ${objTurma3.turma}</option>
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
                        
                            <c:forEach items="${turma}" var="objTurma4">
                                <option value="${objTurma4.id}" ${obj.turma.equals(objTurma4)?'selected':''}> ${objTurma4.turma}</option>
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
