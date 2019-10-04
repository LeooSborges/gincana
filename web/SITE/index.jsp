<%-- 
    Document   : index
    Created on : 22/07/2018, 20:25:57
    Author     : Leo Borges
--%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>IFSul</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicons
    ================================================== -->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"  href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">

<!-- Stylesheet
    ================================================== -->
<link rel="stylesheet" type="text/css"  href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/prettyPhoto.css">
<link href='http://fonts.googleapis.com/css?family=Lato:400,700,900,300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800,600,300' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/modernizr.custom.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- Navigation
    ==========================================-->
<nav id="menu" class="navbar navbar-default navbar-fixed-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand" href="index.jsp">IFSul</a> </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#home" class="page-scroll">Inicio</a></li>
        <li><a href="#about-section" class="page-scroll">Ranking</a></li>
        <li><a href="#works-section" class="page-scroll">Pesquisa</a></li>
        <li><a href="#contact-section" class="page-scroll">Cronograma</a></li>
        <li><a href="#team-section" class="page-scroll">Vencedores</a></li>
        <li><a href="../ADMIN/index.jsp" class="page-scroll">Admin</a></li>
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>

<!-- Header INICIO -->
<header class="text-center" name="home">
  <div class="intro-text">
    <h1>Gincana <span class="color">IFSul</span></h1>
    <p></p>
    <div class="clearfix"></div>
    <a href="#works-section" class="btn btn-default btn-lg page-scroll">Veja mais</a> </div>
</header>
<!-- About Section RANKING-->
<div id="about-section">
  <div class="container">
    <div class="section-title">
      <h2>RANKING ATUALIZADO</h2>
      <ul>
          <li>
          <ol class="type">
            <li><a class="active">Acompanhe aqui a pontuação geral das turmas</a></li>
          </ol>
          </li>
      </ul>
      <hr>
    </div>
    <div class="space"></div>
    <div class="row">
      <div class="col-md-4">
          <h4>Moonknights <a style="font-weight: bold">1350</a><a> pts</a></h4><br>
          <h4>Null <a style="font-weight: bold">000</a><a> pts</a></h4><br>
          <h4>Null <a style="font-weight: bold">000</a><a> pts</a></h4><br>
          <h4>Null <a style="font-weight: bold">000</a><a> pts</a></h4><br>
          <h4>Null <a style="font-weight: bold">000</a><a> pts</a></h4><br>
          <h4>Null <a style="font-weight: bold">000</a><a> pts</a></h4><br>
          <h4>Null <a style="font-weight: bold">000</a><a> pts</a></h4><br>
        <p></p>
      </div>
    </div>
  </div>
</div>


<!-- Portfolio Section  PESQUISA-->
<div id="works-section">
  <div class="container"> <!-- Container -->
    <div class="section-title">
      <h2>PESQUISA</h2>
      <hr>
      <div class="clearfix"></div>
    </div>
    <div class="categories">
      <ul class="cat">
        <li>
          <ol class="type">
            <li><a href="SiteWS?acao=site" data-filter="*" class="active">Turmas</a></li>
            <li><a href="SiteWS?acao=site" data-filter="*" class="active">Atividades</a></li>
          </ol>
        </li>
      </ul>
      <div class="clearfix"></div>
    </div>
<!-- Table Section -->
<div class="card-body">
                        <table class="table table-responsive-sm">
                            <thead>
                                <tr>
                                    <th>Ordenado por NOME</th>  
                                </tr>
                            </thead>
                            <tbody>
               
                                <c:forEach items="${lista}" var="obj">
                                <tr>
                                    <td>${obj.titulo}</td>
                                    <td>${obj.preco}</td>
                                    <td>${obj.genero.nome}</td>
                                    <td>${obj.plataforma.nome}</td>
                                    <td>${obj.classificacao}</td>
                                    <td>${obj.disponibilidade}</td>
                                </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                    </div>
  </div>
</div>
<!-- Contact Section -->
<div id="contact-section">
  <div class="container">
    
       
<!--      <div class="col-md-3 col-sm-6 team">
        <div class="thumbnail"> 
          <div class="caption">
            <h3>Leonardo Borges</h3>
            <p>Developer</p>
          </div>
        </div>
      </div>-->
     <div class="section-title center">
      <h2>CRONOGRAMA</h2>
      <ul>
          <li>
          <ol class="type">
            <li><a class="active">Horario e Local das Atividades</a></li>
          </ol>
          </li>
      </ul>
      <hr>
    </div>
  </div>
</div>
<!-- Team Section VENCEDORES -->
<div id="team-section">
  <div class="container">
    <div class="section-title">
      <h2>MURAL DOS VENCEDORES</h2>
      <hr>
    </div>
      <div class="categories">
      <ul class="cat">
        <li>
          <ol class="type">
            <li><a href="SiteWS?acao=site" data-filter="*" class="active">Informática</a></li>
            <li><a href="SiteWS?acao=site" data-filter="*" class="active">Agropecuária</a></li>
          </ol>
        </li>
      </ul>
      <div class="clearfix"></div>
    </div>
    <div id="row">
      <div class="col-md-3 col-sm-6 team">
        <div class="thumbnail"> <img src="img/team/moonknights.jpeg" alt="..." class="team-img">
          <div class="caption">
            <h3>MOONKNIGHTS</h3>
            <p>6º Informática</p>
            <p>2018</p>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6 team">
        <div class="thumbnail"> <img src="img/team/3.jpeg" alt="..." class="team-img">
          <div class="caption">
            <h3>NULL</h3>
            <p>Nº NULL</p>
            <p>YYYY</p>
          </div>
        </div>
      </div>
      <div class="col-md-3 col-sm-6 team">
        <div class="thumbnail"> <img src="img/team/3.jpeg" alt="..." class="team-img">
          <div class="caption">
            <h3>NULL</h3>
            <p>Nº NULL</p>
            <p>YYYY</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div id="social-section">
  <div class="container">
    <div class="social">
      <ul>
        <li><a href='https://www.facebook.com/'><i class="fa fa-facebook"></i></a></li>
        <li><a href='https://twitter.com/'><i class="fa fa-twitter"></i></a></li>
        <li><a href='https://dribbble.com/'><i class="fa fa-dribbble"></i></a></li>
        <li><a href='https://github.com/'><i class="fa fa-github"></i></a></li>
        <li><a href='https://www.instagram.com/'><i class="fa fa-instagram"></i></a></li>
        <li><a href='https://br.linkedin.com/'><i class="fa fa-linkedin"></i></a></li>
      </ul>
    </div>
  </div>
</div>
<div id="footer">
  <div class="container">
    <p>Copyright &copy; Optics. Designed by <a href="http://www.templatewire.com" rel="nofollow">TemplateWire</a></p>
  </div>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
<script type="text/javascript" src="js/jquery.1.11.1.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script type="text/javascript" src="js/bootstrap.js"></script> 
<script type="text/javascript" src="js/SmoothScroll.js"></script> 
<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script> 
<script type="text/javascript" src="js/jquery.isotope.js"></script> 
<script type="text/javascript" src="js/jqBootstrapValidation.js"></script> 
<script type="text/javascript" src="js/contact_me.js"></script> 

<!-- Javascripts
    ================================================== --> 
<script type="text/javascript" src="js/main.js"></script>
</body>
</html>
