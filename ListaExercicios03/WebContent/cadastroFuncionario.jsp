<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Projeto Controle de Funcionarios</title>

<!-- Arquivos CSS do bootstrap -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css" />

</head>
<body class="container">

	<!-- Cabeçalho da página -->
	<div class="well well-sm">

		<h1>Projeto Controle de Funcionarios</h1>
		Treinamento BRQ COTI Infomática - Java Developer
		<hr />
	</div>

	<!-- Conteudo principal da página -->
	<div class="col-md-12">

		<h2>Cadastro de Funcionário</h2>

		<p>
			<a href="index.jsp">Voltar</a> para a página inicial.
		</p>

		<div class="col-md-4">

			<form name="formulario" method="post"
				action="ControleFuncionario?acao=cadastrar">

				<label>Nome do Funcionario:</label><br /> 
				<input type="text" name="nome" class="form-control"/> <br /> 
				
				<label>Salario:</label><br />
			    <input type="number" name="salario" class="form-control"/> <br /> 
			    <label>Função:</label><br />
				<select class="form-control" name="funcao">
					<option value="" class="form-control" name="funcao">- Escolha uma Opção -</option>
					<option value="Diretor" class="form-control" name="funcao">Diretor</option>
					<option value="Gerente" class="form-control" name="funcao">Gerente</option>
					<option value="Desenvolvedor" class="form-control" name="funcao">Desenvolvedor</option>
					<option value="Analista" class="form-control" name="funcao">Analista</option>
					<option value="Assistente" class="form-control" name="funcao">Assistente</option>
				</select> <br /> <br /> 
				
				<input type="submit" value="Cadastrar Funcionario" class="btn btn-primary" />
				<input type="reset" value="Limpar" class="btn btn-default"/>
				<h4>${mensagem }</h4>

			</form>
		</div>
	</div>
</body>
</html>