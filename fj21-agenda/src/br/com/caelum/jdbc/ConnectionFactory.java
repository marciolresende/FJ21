package br.com.caelum.jdbc;

import java.sql.*;
import java.sql.DriverManager;
import java.util.Calendar;

import br.com.caelum.dao.ContatoDao;
import br.com.caelum.modelo.Contato;

public class ConnectionFactory {
	
	public Connection getConnection() {
		try {
			Class.forName("org.postgresql.Driver");
			return DriverManager.getConnection("jdbc:postgresql://localhost:5432/fj21", "postgres", "postgres");
			
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public static void main(String[] args) {

		Contato contato = new Contato();		
		contato.setNome("Márcio");
		contato.setEmail("teste");
		contato.setEndereco("teste");
		contato.setDataNascimento(Calendar.getInstance());
		
		ContatoDao dao = new ContatoDao();
		dao.adiciona(contato);
		
		System.out.println("Fim");
		
		
		
		
		
		
	}
}
