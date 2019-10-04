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
                    Alteração
                  </div>
                  <div class="card-body">
                      <form action="ColocacaoWS" method="post"> 
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
                        <select name="txtAtividade">
                        
                            <c:forEach items="${atividade}" var="objAtividade">
                                <option value="${objAtividade.id}" ${obj.atividade.equals(objAtividade)?'selected':''}> ${objAtividade.atividade}</option>
                            </c:forEach>
                        </select><br><br>
                         
                        </div>
                      </div>
                            
                      <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">1°</span>
                          </div>
                        <select name="txtTurma">
                        
                            <c:forEach items="${p1}" var="objP1">
                                <option value="${objP1.id}" ${obj.p1.equals(objP1)?'selected':''}> ${objP1.p1}</option>
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
                        
                            <c:forEach items="${p2}" var="objP2">
                                <option value="${objP2.id}" ${obj.p2.equals(objP2)?'selected':''}> ${objP2.p2}</option>
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
                        
                            <c:forEach items="${p3}" var="objP3">
                                <option value="${objP3.id}" ${obj.p3.equals(objP3)?'selected':''}> ${objP3.p3}</option>
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
                        
                            <c:forEach items="${p4}" var="objP4">
                                <option value="${objP4.id}" ${obj.p4.equals(objP4)?'selected':''}> ${objP4.p4}</option>
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
