<%@include file="../cabecalho.jsp" %>
<main class="main">
    <!-- Breadcrumb-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">Desenvolvedora</li>
        <li class="breadcrumb-item">
            <a href="DesenvolvedoraWS">Listar</a>
        </li>

    </ol>
    <div class="container-fluid">
        <div class="row">
           <div class="row">
              <div class="col-lg-auto">
                <div class="card">
                  <div class="card-header">
                    Alteração
                  </div>
                  <div class="card-body">
                      <form action="DesenvolvedoraWS" method="post"> 
                        <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">ID</span>
                          </div>
                            <input type="text"  value="${obj.id}" name="txtId" readonly class="form-control">
                         
                        </div>
                       </div>
                      <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Nome da desenvolvedora</span>
                          </div>
                          <input type="text"  value="${obj.nome}" name="txtNome" class="form-control">
                          
                        </div>     
                            
                       
                      </div>
                      <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text">Localização</span>
                          </div>
                            
                            <!--da onde que eu to pegando esse obj-->
                          <input type="text" value="${obj.localizacao}" name="txtLocalizacao" class="form-control">
                          
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
