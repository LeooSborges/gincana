<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../cabecalho.jsp" %>

<main class="main">
    <!-- Breadcrumb-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">Colocacao</li>
        <li class="breadcrumb-item">
            <a href="ColocacaoWS">Listar</a>
        </li>

    </ol>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">

                        <form action="ColocacaoWS" method="get" class="form-horizontal">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="input-group">
                                        <span class="input-group-prepend">
                                            <button type="submit" class="btn btn-primary">
                                                <i class="fa fa-search"></i> &nbsp;</button>
                                        </span>
                                       <input type="text" id="input1-group2" name="txtFiltro" class="form-control" placeholder="digite a pesquisa">
                                        
                                       
                                       <!-- indica pro servlet que a aчуo щ um filtro --> 
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
                                    <th style="color: white">1А</th>
                                    <th style="color: white">2А</th>
                                    <th style="color: white">3А</th>
                                    <th style="color: white">4А</th>
                                    <th style="color: white"></th>
                                </tr>
                            </thead>
                            <tbody>
               
                                <c:forEach items="${lista}" var="obj">
                                    <tr style="color: #3ea662">
                                    <td>${obj.id}</td>
                                    <td>${obj.atividade.atividade}</td>
                                    <td>${obj.turma.p1}</td>
                                    <td>${obj.turma.p2}</td>
                                    <td>${obj.turma.p3}</td>
                                    <td>${obj.turma.p4}</td>
                                
                                    <td>
                                        <a href="ColocacaoWS?acao=upd&id=${obj.id}" class="btn btn-pill btn-success btn-sm" title="alterar"> 
                                            <i class="fa fa-edit"></i>
                                        </a>
                                        <a href="ColocacaoWS?acao=del&id=${obj.id}" class="btn btn-pill btn-danger btn-sm" title="excluir"> 
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
                            <a href="ColocacaoWS?acao=add" class="btn btn-pill btn-primary"> 
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
