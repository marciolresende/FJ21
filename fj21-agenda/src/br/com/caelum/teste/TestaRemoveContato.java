package br.com.caelum.teste;

import br.com.caelum.dao.ContatoDao;
import br.com.caelum.modelo.Contato;

public class TestaRemoveContato {
	public static void main(String[] args) {
		//pronto para remover
		Contato contato = new Contato();
		contato.setId(1L);
		
		//use esta conexao para remover
		ContatoDao dao = new ContatoDao();
			
		//metodo elegante
		dao.remove(contato);
		
		System.out.println("Removido!");
	}

}
