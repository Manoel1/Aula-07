<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Cadastro de Paises</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/estilo.css" rel="stylesheet">

</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Cadastrar Paises</a>
			</div>


		</div>
	</nav>


	<form action="ManterPais.do" method="post">

		<label class="sr-only">nome:</label> <input type="txt"
			name="inputName" class="form-control input-lg"
			placeholder="NOME DO PAIS" maxlength="30" required /> <label
			class="sr-only">populacao:</label> <input type="number"
			name="inputPopu" class="form-control input-lg"
			placeholder="POPULACAO DO PAIS" maxlength="30" required /> <label
			class="sr-only">area:</label> <input type="number" name="inputArea"
			class="form-control input-lg" placeholder="AREA DO PAIS"
			maxlength="30"  required />

		<button type="submit" class="btn btn-primary btn-lg btn-block">
			Enviar
		</button>

	</form>
	<script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>