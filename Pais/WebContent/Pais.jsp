<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.Pais"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Pais</title>

<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link href="css/estilo.css" rel="stylesheet">
</head>

<body>
	<!-- Barra superior com os menus de navegação -->
	<c:import url="Menu.jsp" />
	<!-- Container Principal -->
	<div id="main" class="container">
		<h3 class="page-header">Pais #${Pais.id}</h3>
		<div class="row">
			<div class="col-md-12">
				<p>
					<strong>Nome</strong>
				</p>
				<p>${Pais.nome}</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<p>
					<strong>Populacao</strong>
				</p>
				<p>${Pais.populacao}</p>
			</div>
			<div class="col-md-12">
				<p>
					<strong>Area</strong>
				</p>
				<p>${Pais.area}</p>
			</div>
		</div>
		<hr />
		<div id="actions" class="row">
			<div class="col-md-12">
				<a href="index.jsp" class="btn btn-default">Voltar</a>
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>

</html>