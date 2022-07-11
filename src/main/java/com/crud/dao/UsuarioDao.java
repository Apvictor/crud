package com.crud.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.crud.bean.Usuario;

public class UsuarioDao {

	public static Connection getConnection() {
		Connection con = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crudjava", "root", "");
		} catch (Exception e) {
			System.out.print(e);
		}

		return con;
	}

	public static Usuario gerUsuarioById(int id) {
		Usuario usuario = new Usuario();

		try {
			Connection con = getConnection();
			java.sql.PreparedStatement ps = con.prepareStatement("SELECT * FROM usuario WHERE id = ?;");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				usuario.setId(rs.getInt("id"));
				usuario.setNome(rs.getString("nome"));
				usuario.setEmail(rs.getString("email"));
				usuario.setPassword(rs.getString("password"));
				usuario.setSexo(rs.getString("sexo"));
				usuario.setPais(rs.getString("pais"));
			}
		} catch (Exception e) {
			System.out.print(e);
		}

		return usuario;
	}

	public static List<Usuario> getAllUsuarios() {
		List<Usuario> list = new ArrayList<Usuario>();

		try {
			Connection con = getConnection();
			java.sql.PreparedStatement ps = con.prepareStatement("SELECT * FROM usuario;");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Usuario usuario = new Usuario();
				usuario.setId(rs.getInt("id"));
				usuario.setNome(rs.getString("nome"));
				usuario.setEmail(rs.getString("email"));
				usuario.setPassword(rs.getString("password"));
				usuario.setSexo(rs.getString("sexo"));
				usuario.setPais(rs.getString("pais"));
				list.add(usuario);
			}
		} catch (Exception e) {
			System.out.print(e);
		}

		return list;
	}

	public static int updateUsuario(Usuario u) {
		int status = 0;

		try {
			Connection con = getConnection();
			java.sql.PreparedStatement ps = con.prepareStatement(
					"UPDATE usuario SET nome=?," + "email=?," + "password=?," + "sexo=?," + "pais=?  WHERE id = ?;");

			ps.setString(1, u.getNome());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			ps.setString(4, u.getSexo());
			ps.setString(5, u.getPais());
			ps.setInt(6, u.getId());

			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.print(e);
		}

		return status;
	}

	public static int salvarUsuario(Usuario u) {
		int status = 0;

		try {
			Connection con = getConnection();
			java.sql.PreparedStatement ps = con
					.prepareStatement("INSERT INTO usuario (nome, email, password, sexo, pais) VALUES (?,?,?,?,?);");

			ps.setString(1, u.getNome());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			ps.setString(4, u.getSexo());
			ps.setString(5, u.getPais());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.print(e);
		}

		return status;
	}

	public static int deletarUsuario(Usuario u) {
		int status = 0;

		try {
			Connection con = getConnection();
			java.sql.PreparedStatement ps = con.prepareStatement("DELETE FROM usuario WHERE id=?;");
			ps.setInt(1, u.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.print(e);
		}

		return status;
	}

}
