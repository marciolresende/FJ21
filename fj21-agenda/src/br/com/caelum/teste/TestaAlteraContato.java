package br.com.caelum.teste;
import java.util.Calendar;

import br.com.caelum.dao.ContatoDao;
import br.com.caelum.modelo.Contato;

public class TestaAlteraContato {
	public static void main(String[] args) {
		//pronto para alterar
		Contato contato = new Contato();
		contato.setNome("Caelum alterado");
		contato.setEmail("contato_alterado@caelum.com.br");
		contato.setEndereco("R. Vergueiro alterado, 3185 cj57");
		contato.setDataNascimento(Calendar.getInstance());
		contato.setId(2L);
		
		//grave nesta conexao
		ContatoDao dao = new ContatoDao();
		
		//metodo elegante
		dao.altera(contato);
		
		System.out.println("alterando!");	
	}

}
