<%@include file="../cabecalho.jsp" %>
<main class="main">
    <!-- Breadcrumb-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">Turma</li>
        <li class="breadcrumb-item">
            <a href="TurmaWS">Listar</a>
        </li>

    </ol>
    <div class="container-fluid">
        <div class="row">
           <div class="row">
              <div class="col-lg-auto">
                <div class="card">
                  <div class="card-header" style="color: white; font-weight: bold; background-color: #3ea662">
                    Cadastro
                  </div>
                  <div class="card-body">
                      <form action="UploadWS" method="post" enctype="multipart/form-data">
                      <input type="hidden" name="urldestino" value="TurmaWS">
                      <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Turma</span>
                          </div>
                          <input type="text"  name="txtTurma" class="form-control">
                         
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Cor</span>
                          </div>
                          <input type="text"  name="txtCor" class="form-control">
                         
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Semestre</span>
                          </div>
                          <input type="text"  name="txtSemestre" class="form-control">
                         
                        </div>
                      </div>
                          
                      <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Curso</span>
                          </div>
                          <input type="text"  name="txtCurso" class="form-control">
                         
                        </div>
                      </div>    
                     
                      <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Hino</span>
                          </div>
                          <input type="text"  name="txtHino" class="form-control">
                         
                        </div>
                      </div>
                      
                      <div class="form-group-file">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" for="file" style="color: #3ea662">Alunos</span>
                          </div>
                          <input type="file" required name="txtFoto" class="form-control">
                         
                        </div>
                      </div>
                          <div><a><br></a></div>
                      <div class="form-group-file">
                        <div class="input-group">
                          <div class="input-group-prepend">
                              <span class="input-group-text" for="file" style="color: #3ea662">Emblema</span>
                          </div>
                          <input type="file" required name="txtEmblema" class="form-control">
                         
                        </div>
                      </div>    
                          
                     <div><a><br></a></div>
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
