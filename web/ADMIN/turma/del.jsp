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
                  <div class="card-header">
                    Exclus�o
                  </div>
                  <div class="card-body">
                   ${msg}
                  </div>
                </div>
              </div>
              

            </div>

        <!--/.row-->
    </div>
</main>



<%@include file="../rodape.jsp" %>
