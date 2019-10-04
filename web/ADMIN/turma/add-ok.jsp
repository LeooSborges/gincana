<%@include file="../cabecalho.jsp" %>
<main class="main">
    <!-- Breadcrumb-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">Turma</li>
        <li class="breadcrumb-item">
            <a href="TurmaWS">Listar</a>
        </li>
        <li class="breadcrumb-item">
            <a href="add.jsp">Incluir</a>
        </li>

    </ol>
    <div class="container-fluid">
        <div class="row">
           <div class="row">
              <div class="col-lg-auto">
                <div class="card">
                  <div class="card-header" style="color: white; font-weight: bold; background-color: #3ea662;">
                    Cadastro
                  </div>
                  <div class="card-body" style="color: #3ea662">
                   ${msg}
                  </div>
                </div>
              </div>
              

            </div>

        <!--/.row-->
    </div>
</main>



<%@include file="../rodape.jsp" %>
