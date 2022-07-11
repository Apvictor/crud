<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edicao do Usuario</title>
</head>
<body>
	<%@ page import="com.crud.dao.UsuarioDao, com.crud.bean.*, java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<%
	String id = request.getParameter("id");
	Usuario usuario = UsuarioDao.gerUsuarioById(Integer.parseInt(id));
	%>

	<h1>Edicao do Usuario</h1>

	<form action="update.jsp" method="POST">
		<input type="hidden" name="id" value="<%=usuario.getId()%>">

		<table>
			<tr>
				<td>Nome:</td>
				<td><input type="text" name="nome"
					value="<%=usuario.getNome()%>"></td>
			</tr>
			<tr>
				<td>E-mail:</td>
				<td><input type="email" name="email"
					value="<%=usuario.getEmail()%>"></td>
			</tr>
			<tr>
				<td>Senha:</td>
				<td><input type="password" name="password"
					value="<%=usuario.getPassword()%>"></td>
			</tr>
			<tr>
				<td>Sexo:</td>
				<td><input type="radio" id="sexo1" name="sexo"
					value="Masculino"> <label for="sexo1">Masculino</label> <input
					type="radio" id="sexo2" name="sexo" value="Feminino"> <label
					for="sexo2">Feminino</label></td>
			</tr>
			<tr>
				<td>Pais:</td>
				<td><select name="pais">
						<option value="Brasil">Brasil</option>
						<option value="EUA">EUA</option>
						<option value="Portugal">Portugal</option>
						<option value="Argentina">Argentina</option>
						<option value="Outros">Outros</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Editar Usuario">
				</td>
			</tr>
		</table>
	</form>

	<a href="viewusuarios.jsp">Voltar para Lista de Usuarios</a>

</body>
</html>