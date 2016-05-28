<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Projeto Controle de Funcionarios</title>

<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css" />

</head>
<body class="container">

	<!-- Cabeçalho da Pagina -->
	<div class="well well-sm">
		<h1>Projeto Controle de Funcionarios</h1>
		Treinamento BRQ COTI Infomática - Java Developer
		<hr />
	</div>

	<!-- Conteudo do Body -->

	<div class="col-md-12">
		<h2>Bem Vindo ao Projeto</h2>

		<p>Selecione a opção desejada:</p>

		<div class="col-md-3 panel text-center">
			<div class="glyphicon glyphicon-pencil" style="font-size: 3em;"></div>
			<br /><br /> 
			<a href="cadastroFuncionario.jsp" class="btn btn-default">Cadastrar
				Funcionario</a>
		</div>
		
		<div class="col-md-3 panel text-center">
			<div class="glyphicon glyphicon-search" style="font-size: 3em;"></div>
			<br/><br/>			
			<a href="consultaFuncionario.jsp" class="btn btn-default">Consultar
				Funcionario</a>
		</div>
</body>
</html>