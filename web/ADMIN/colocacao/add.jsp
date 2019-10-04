<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../cabecalho.jsp" %>
<main class="main">
    <!-- Breadcrumb-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">Colocacao</li>
        <li class="breadcrumb-item">
            <a href="ColocacaoWS">Listar</a>
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
                      <form action="ColocacaoWS" method="post">
                      
                       <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Atividade</span>
                          </div>
                          <select name="txtAtividade">
                         <c:forEach items="${atividade}" var="obj">
                                <option value="${obj.id}">${obj.atividade}</option>
                          </c:forEach>
                        </select><br><br>
                         
                        </div>
                      </div>   
                          
                       <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">1°</span>
                          </div>
                          <select name="txtP1">
                         <c:forEach items="${p1}" var="obj">
                                <option value="${obj.id}">${obj.p1}</option>
                          </c:forEach>
                        </select><br><br>
                         
                        </div>
                      </div>  
                            
                          <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">2°</span>
                          </div>
                          <select name="txtP2">
                         <c:forEach items="${p2}" var="obj">
                                <option value="${obj.id}">${obj.p2}</option>
                          </c:forEach>
                        </select><br><br>
                         
                        </div>
                      </div>
                          
                          <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">3°</span>
                          </div>
                          <select name="txtP3">
                         <c:forEach items="${p3}" var="obj">
                                <option value="${obj.id}">${obj.p3}</option>
                          </c:forEach>
                        </select><br><br>
                         
                        </div>
                      </div>
                          
                          <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">4°</span>
                          </div>
                          <select name="txtP4">
                         <c:forEach items="${p4}" var="obj">
                                <option value="${obj.id}">${obj.p4}</option>
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
