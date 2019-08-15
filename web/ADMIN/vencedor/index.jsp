<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../cabecalho.jsp" %>

<main class="main">
    <!-- Breadcrumb-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">Jogos</li>
        <li class="breadcrumb-item">
            <a href="JogosWS">Listar</a>
        </li>

    </ol>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">

                        <form action="JogosWS" method="get" class="form-horizontal">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="input-group">
                                        <span class="input-group-prepend">
                                            <button type="submit" class="btn btn-primary">
                                                <i class="fa fa-search"></i> &nbsp;</button>
                                        </span>
                                       <input type="text" id="input1-group2" name="txtFiltro" class="form-control" placeholder="digite a pesquisa">
                                        
                                       
                                       <!-- indica pro servlet que a ação é um filtro --> 
                                       <input type="hidden" name="acao" value="filter" />
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="card-body">
                        <table class="table table-responsive-sm">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nome Jogo</th>
                                    <th>Lançamento</th>
                                    <th>Classificação</th>
                                    <th>Numero de Players</th>
                                    <th>Preço</th>
                                    <th>Desenvolvedora</th>
                                    <th>Genero</th>
                                    <th>Plataforma</th>
                                    <th>Disponibilidade</th>
                                    <th></th>
                                    
                                </tr>
                            </thead>
                            <tbody>
               
                                <c:forEach items="${lista}" var="obj">
                                <tr>
                                    <td>${obj.id}</td>
                                    <td>${obj.titulo}</td>
                                    <td>${obj.lancamento}</td>
                                    <td>${obj.classificacao}</td>
                                    <td>${obj.numPlayers}</td>
                                    <td>${obj.preco}</td>
                                    <td>${obj.desenvolvedora.nome}</td>
                                    <td>${obj.genero.nome}</td>
                                    <td>${obj.plataforma.nome}</td>
                                    <td>${obj.disponibilidade}</td>
                                    
                                    
                                        
                                    <td>
                                        <a href="JogosWS?acao=upd&id=${obj.id}" class="btn btn-pill btn-success btn-sm" title="alterar"> 
                                            <i class="fa fa-edit"></i>
                                        </a>
                                        <a href="JogosWS?acao=del&id=${obj.id}" class="btn btn-pill btn-danger btn-sm" title="excluir"> 
                                            <i class="fa fa-remove"></i>
                                        </a>

                                    </td>
                                </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                        <ul class="pagination">
                            <li class="page-item">
                                <a class="page-link" href="#">Prev</a>
                            </li>
                            <li class="page-item active">
                                <a class="page-link" href="#">1</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">2</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">3</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">4</a>
                            </li>
                            <li class="page-item">
                                <a class="page-link" href="#">Next</a>
                            </li>
                        </ul>
                        <div class="row col-lg-12">
                            <a href="JogosWS?acao=action" class="btn btn-pill btn-primary"> 
                                <i class="fa fa-plus"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!--/.col-->


        </div>

        <!--/.row-->
    </div>
</main>



<%@include file="../rodape.jsp" %>
