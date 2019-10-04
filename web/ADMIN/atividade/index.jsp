<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../cabecalho.jsp" %>

<main class="main">
    <!-- Breadcrumb-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">Atividade</li>
        <li class="breadcrumb-item">
            <a href="AtividadeWS">Listar</a>
        </li>

    </ol>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">

                        <form action="AtividadeWS" method="get" class="form-horizontal">
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
                            <thead  style="background-color: #3ea662">
                                <tr>
                                    
                                    <th style="color: white">Id</th>
                                    <th style="color: white">Atividade</th>
                                    <th style="color: white">Descrição</th>
                                    <th style="color: white">Horário</th>
                                    <th style="color: white">Localidade</th>
                                    <th style="color: white">Data</th>
                                    <th style="color: white">1°</th>
                                    <th style="color: white">2°</th>
                                    <th style="color: white">3°</th>
                                    <th style="color: white">4°</th>
                                    
                                    <th style="color: white"></th>
                                </tr>
                            </thead>
                            <tbody>
               
                                <c:forEach items="${lista}" var="obj">
                                    <tr style="color: #3ea662">
                                    <td>${obj.id}</td>
                                    <td>${obj.atividade}</td>
                                    <td>${obj.descricao}</td>
                                    <td>${obj.horario}</td>
                                    <td>${obj.localidade}</td>
                                    <td>${obj.dia}</td>
                                    <td>${obj.primeiro}</td>
                                    <td>${obj.segundo}</td>
                                    <td>${obj.terceiro}</td>
                                    <td>${obj.quarto}</td>

                                
                                    <td>
                                        <a href="AtividadeWS?acao=upd&id=${obj.id}" class="btn btn-pill btn-success btn-sm" title="alterar"> 
                                            <i class="fa fa-edit"></i>
                                        </a>
                                        <a href="AtividadeWS?acao=del&id=${obj.id}" class="btn btn-pill btn-danger btn-sm" title="excluir"> 
                                            <i class="fa fa-remove"></i>
                                        </a>

                                    </td>
                                </tr>
                                </c:forEach>

                            </tbody>
                        </table>
<!--                        <ul class="pagination">
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
                        </ul>-->
                        <div class="row col-lg-12">
                            <a href="AtividadeWS?acao=add" class="btn btn-pill btn-primary"> 
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
