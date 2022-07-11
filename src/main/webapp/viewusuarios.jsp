<html>
<head>
<meta charset="ISO-8859-1">
<title>Visualizacao de Usuarios</title>
</head>
<body>
	<%@ page import="com.crud.dao.UsuarioDao, com.crud.bean.*, java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<%
	List<Usuario> list = UsuarioDao.getAllUsuarios();
	request.setAttribute("list", list);
	%>
	
	<h1>Listagem de Usuarios</h1>

	<table border="1">
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Email</th>
			<th>Password</th>
			<th>Sexo</th>
			<th>Pais</th>
			<td>EDITAR</td>
			<td>EXCLUIR</td>
		</tr>

		<c:forEach items="${list}" var="usuario">
			<tr>
				<td>${usuario.getId()}</td>
				<td>${usuario.getNome()}</td>
				<td>${usuario.getEmail()}</td>
				<td>${usuario.getPassword()}</td>
				<td>${usuario.getSexo()}</td>
				<td>${usuario.getPais()}</td>
				<td><a href="form-edit.jsp?id=${usuario.getId()}">EDITAR</a></td>
				<td><a href="delete.jsp?id=${usuario.getId()}">EXCLUIR</a></td>
			</tr>
		</c:forEach>
	</table>

	<a href="form-add.jsp">Adicionar novo Usuario</a>

</body>
</html>