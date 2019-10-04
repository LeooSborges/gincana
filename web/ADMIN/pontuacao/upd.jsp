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
                    Alteração
                  </div>
                  <div class="card-body">
                      <form action="PontuacaoWS" method="post"> 
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
                            <span class="input-group-text" style="color: #3ea662">Turma</span>
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
                            <span class="input-group-text" style="color: #3ea662">Pontuação</span>
                          </div>
                          <input type="text"  value="${obj.pontuacao}" name="txtPontuacao" class="form-control">
                          
                        </div>     
                        </div>
                        <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Ano</span>
                          </div>
                        <select name="txtAno">
                            
                            <c:forEach items="${ano}" var="objAno">
                                <option value="${objAno.id}" ${obj.ano.equals(objAno)?'selected':''}> ${objAno.ano}</option>
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
