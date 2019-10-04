<%@include file="../cabecalho.jsp" %>
<main class="main">
    <!-- Breadcrumb-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">Ano</li>
        <li class="breadcrumb-item">
            <a href="AnoWS">Listar</a>
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
                      <form action="AnoWS" method="post"> 
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
                            <span class="input-group-text" style="color: #3ea662">Ano</span>
                          </div>
                          <input type="text"  value="${obj.ano}" name="txtAno" class="form-control">
                          
                        </div>     
                        </div>
                        
                        
                          
<!--                        <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Alunos</span>
                          </div>
                          <input type="file" required value="{obj.endFoto}" name="txtFoto" class="form-control">
                         
                        </div>
                        </div>  
                        
                        <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Emblema</span>
                          </div>
                          <input type="file" required value="{obj.endEmblema}" name="txtEmblema" class="form-control">
                         
                        </div>
                        </div>  -->
               
                 
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
