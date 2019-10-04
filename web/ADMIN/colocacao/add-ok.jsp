<%@include file="../cabecalho.jsp" %>
<main class="main">
    <!-- Breadcrumb-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">Colocacao</li>
        <li class="breadcrumb-item">
            <a href="ColocacaoWS">Listar</a>
        </li>
        <li class="breadcrumb-item">
            <a href="ColocacaoWS?acao=add">Incluir</a>
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
