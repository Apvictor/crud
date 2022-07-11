<%@ page import="com.crud.dao.UsuarioDao"%>
<jsp:useBean id="u" class="com.crud.bean.Usuario"></jsp:useBean>

<jsp:setProperty property="*" name="u"></jsp:setProperty>


<%
int i = UsuarioDao.salvarUsuario(u);

if (i > 0)
	response.sendRedirect("view-success.jsp");
else
	response.sendRedirect("view-error.jsp");
%>