package br.com.caelum.teste;

import java.util.Calendar;
import br.com.caelum.dao.ContatoDao;
import br.com.caelum.modelo.Contato;

public class TestaInsercaoContato {
	public static void main(String[] args) {
		//pronto para gravar
		Contato contato = new Contato();
		contato.setNome("Caelum");
		contato.setEmail("contato@caelum.com.br");
		contato.setEndereco("R. Vergueiro, 3185 cj57");
		contato.setDataNascimento(Calendar.getInstance());
		
		//grave nessa conexão!!
		ContatoDao dao = new ContatoDao();
		
		//metodo elegante
		dao.adiciona(contato);
		
		System.out.println("Gravado!");
		
	}

}
