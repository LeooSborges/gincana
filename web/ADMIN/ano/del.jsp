<%@include file="../cabecalho.jsp" %>
<main class="main">
    <!-- Breadcrumb-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">Ano</li>
        <li class="breadcrumb-item">
            <a href="AnoWS">Listar</a>
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
                  <div class="card-header" style="background-color: #3ea662; color: white; font-weight: bold">
                    Exclus�o
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
