<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../cabecalho.jsp" %>

<main class="main">
    <!-- Breadcrumb-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">Ano</li>
        <li class="breadcrumb-item">
            <a href="AnoWS">Listar</a>
        </li>

    </ol>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-4">
                <div class="card">
                    
                    <div class="card-body">
                        <table class="table table-responsive-sm">
                            <thead  style="background-color: #3ea662">
                                <tr>
                                    
                                    <th style="color: white">Id</th>
                                    <th style="color: white">Ano</th>
                                    <th style="color: white"></th>
                                </tr>
                            </thead>
                            <tbody>
               
                                <c:forEach items="${lista}" var="obj">
                                    <tr style="color: #3ea662">
                                    <td>${obj.id}</td>
                                    <td>${obj.ano}</td>
                                
                                    <td>
                                        <a href="AnoWS?acao=upd&id=${obj.id}" class="btn btn-pill btn-success btn-sm" title="alterar"> 
                                            <i class="fa fa-edit"></i>
                                        </a>
                                        <a href="AnoWS?acao=del&id=${obj.id}" class="btn btn-pill btn-danger btn-sm" title="excluir"> 
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
                            <a href="add.jsp" class="btn btn-pill btn-primary"> 
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
