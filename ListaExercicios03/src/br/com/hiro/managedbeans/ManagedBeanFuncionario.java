package br.com.hiro.managedbeans;

import java.util.List;

import br.com.hiro.entities.Funcionario;
import br.com.hiro.persistence.DAOFuncionario;

public class ManagedBeanFuncionario {

	private List<Funcionario> listagemFuncionarios;

	public List<Funcionario> getListagemFuncionarios() {
		
		try{
			DAOFuncionario d = new DAOFuncionario();
			listagemFuncionarios = d.findAll();
		}catch(Exception e){
			e.printStackTrace();
		}
		return listagemFuncionarios;
		
	}
	
	
	
}
