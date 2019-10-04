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
                  <div class="card-header" style="background-color: #3ea662; font-weight: bold; color: white">
                    Alteração
                  </div>
                  <div class="card-body">
                      <form action="UploadWS" method="post" enctype="multipart/form-data"> 
                        <input type="hidden" name="urldestino" value="TurmaWS">
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
                          <input type="text"  value="${obj.turma}" name="txtTurma" class="form-control">
                          
                        </div>     
                        </div>
                        <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Cor</span>
                          </div>
                          <input type="text"  value="${obj.cor}" name="txtCor" class="form-control">
                          
                        </div>     
                        </div>
                        <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Semestre</span>
                          </div>
                          <input type="text"  value="${obj.semestre}" name="txtSemestre" class="form-control">
                          
                        </div>     
                        </div>
                        <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Curso</span>
                          </div>
                          <input type="text"  value="${obj.curso}" name="txtCurso" class="form-control">
                          
                        </div>     
                        </div>
                        <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Hino</span>
                          </div>
                          <input type="text"  value="${obj.hino}" name="txtHino" class="form-control">
                          
                        </div>     
                        </div>
                          
                        <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Alunos</span>
                          </div>
                          <input type="file" required value="{obj.endFoto}" name="txtFoto" class="form-control">
                         
                        </div>
                        </div>  
                        
                        <div class="form-group">
                        <div class="input-group">
                          <div class="input-group-prepend">
                            <span class="input-group-text" style="color: #3ea662">Emblema</span>
                          </div>
                          <input type="file" required value="{obj.endEmblema}" name="txtEmblema" class="form-control">
                         
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
