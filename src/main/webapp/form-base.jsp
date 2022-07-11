<h1>Cadastrar Novo Usuario</h1>

<form action="insert.jsp" method="POST">

	<table>
		<tr>
			<td>Nome:</td>
			<td><input type="text" name="nome"></td>
		</tr>
		<tr>
			<td>E-mail:</td>
			<td><input type="email" name="email"></td>
		</tr>
		<tr>
			<td>Senha:</td>
			<td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td>Sexo:</td>
			<td><input type="radio" id="sexo1" name="sexo" value="Masculino"><label
				for="sexo1">Masculino</label> <input type="radio" id="sexo2"
				name="sexo" value="Feminino"><label for="sexo2">Feminino</label>
			</td>
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
			<td colspan="2"><input type="submit" value="Adicionar Usuario">
			</td>
		</tr>
	</table>
</form>

<a href="viewusuarios.jsp">Voltar para Lista de Usuarios</a>
