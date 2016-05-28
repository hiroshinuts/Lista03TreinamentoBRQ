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

		<a href="index.jsp">Voltar</a> para a página inicial.
		<hr />
		
		<h4>${mensagem }</h4>
		
	<table class="table table-hover">
		<thead>
			<tr>
				<th>Código</th>
				<th>Nome do Funcionario</th>
				<th>Salário</th>
				<th>Função</th>
			</tr>
		</thead>
		
		<tbody>
		
			<!-- JSTL -->
			<c:forEach items="${mb.listagemFuncionarios}" var="f">
			
				<tr>
					<td>${f.idFuncionario}</td>
					<td>${f.nome}</td>
					<td>
					<fmt:formatNumber value="${f.salario}" type="currency"></fmt:formatNumber>
					</td>
					<td>${f.funcao}</td>
					
					<td>
						<a href="ControleFuncionario?acao=visualizar&id=${f.idFuncionario}" 
						class="btn btn-warning btn-sm">
						<span class ="glyphicon glyphicon-search"></span>
						Visualizar
						</a>
						
						<a href="ControleFuncionario?acao=excluir&id=${f.idFuncionario}"
						class="btn btn-danger btn-sm"
						onclick="return confirm('Deseja excluir este Funcionario?');">
						<span class="glyphicon glyphicon-trash"></span>
						Excluir
						</a>
						
						<a href="ControleFuncionario?acao=editar&id=${f.idFuncionario}"
						class="btn btn-info btn-sm">
						<span class="glyphicon glyphicon-edit"></span>
						Alterar
						</a>
					</td>
					
				</tr>
			
			</c:forEach>
		
		</tbody>
		
		<tfoot>
			
			<tr>
				<td colspan="3">
					Quantidade de registros: 
					${fnc:length(mb.listagemFuncionarios)}
				</td>
			</tr>
		</tfoot>
	</table>
	</div>	
	
</body>
</html>