<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<<jsp:useBean id="mb" class="br.com.hiro.managedbeans.ManagedBeanFuncionario"></jsp:useBean>
<!-- JSP Standart Tag Libraries -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fnc"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Projeto Controle de Funcionarios</title>

<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css" />

</head>
<body class="container">

	<div class="well well-sm">
		<h1>Projeto Controle de Funcionarios</h1>
		Treinamento BRQ COTI Infomática - Java Developer
		<hr />
	</div>

	<div class="col-md-12">
	
	<h2>Consulta de Funcionário</h2>

		<a href="consultaFuncionario.jsp">Voltar</a> para a página de consulta.
		<hr />
		
		<div class="col-md-4">
		
			<form name="formulario" method="post" action="ControleFuncionario?acao=atualizar">
			
				<label>Id do Produto:</label>
				<input type="text" name="idfuncionario"	class="form-control" 
				value="${funcionario.idFuncionario}" readonly="readonly" />	
				<br/>
				
				<label>Nome do Funcionario:</label>
				<input type="text" name="nome" class="form-control" value="${funcionario.nome}" />
				<br/>
				
				<label>Salario:</label><br />
			    <input type="number" name="salario" class="form-control" value="${funcionario.salario}" />
			    <br/>
			    
			    <label>Função:</label><br />
			    <select class="form-control" name="funcao">
					<option value="" class="form-control" name="funcao">- ${funcionario.funcao} -</option>
					<option value="Diretor" class="form-control" name="funcao">Diretor</option>
					<option value="Gerente" class="form-control" name="funcao">Gerente</option>
					<option value="Desenvolvedor" class="form-control" name="funcao">Desenvolvedor</option>
					<option value="Analista" class="form-control" name="funcao">Analista</option>
					<option value="Assistente" class="form-control" name="funcao">Assistente</option>
					
				</select> <br /> <br />

				<input type="submit" value="Atualizar Dados" class="btn btn-success" />
				<br />
				
				<h4>${mensagem}</h4>
				
			
			</form>
		</div>
		
	
	</div>	
	
</body>
</html>