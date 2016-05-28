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
		<h2>Detalhe Funcionario</h2>
		
		<h2>Consulta de Funcionário</h2>

		<a href="consultaFuncionario.jsp">Voltar</a> para a página de consulta.
		<hr />
		
		<h3>${mensagem}</h3>
		
		<label>Dados do Funcionario</label><br/><br/>
		
		<label>Id do Funcionario: </label>${funcionario.idFuncionario}
		<br/>
		<label>Nome do Funcionario: </label>${funcionario.nome}
		<br/>
		<label>Salário: </label>${funcionario.salario}
		<br/>
		<label>Função: </label>${funcionario.funcao}
	</div>	

</body>
</html>