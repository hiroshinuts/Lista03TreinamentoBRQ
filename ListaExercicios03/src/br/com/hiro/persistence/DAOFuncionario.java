package br.com.hiro.persistence;

import java.util.ArrayList;
import java.util.List;

import br.com.hiro.entities.Funcionario;
import br.com.hiro.entities.types.Funcao;

public class DAOFuncionario extends DAO {

	public void insert(Funcionario f) throws Exception {

		String query = "insert into funcionario(nome, salario, funcao) values(?, ?, ?)";

		openConnection();

		stmt = con.prepareStatement(query);
		stmt.setString(1, f.getNome());
		stmt.setDouble(2, f.getSalario());
		stmt.setString(3, f.getFuncao().name());
		stmt.execute();
		stmt.close();

		closeConnection();

	}

	public void update(Funcionario f) throws Exception {

		String query = "update funcionario set nome=?, salario=?, funcao=? where idfuncionario=?" ;

		openConnection();

		stmt = con.prepareStatement(query);
		stmt.setString(1,f.getNome());
		stmt.setDouble(2,f.getSalario());
		stmt.setString(3, f.getFuncao().name());
		stmt.setInt(4, f.getIdFuncionario());
		stmt.execute();
		stmt.close();

		closeConnection();

	}
	
	public void delete(Integer idFuncionario) throws Exception{
		
		String query = "delete from funcionario where idfuncionario=?";
		
		openConnection();
		
		stmt = con.prepareStatement(query);
		stmt.setInt(1, idFuncionario);
		stmt.execute();
		stmt.close();
		
		closeConnection();
		
	}
	
	public Funcionario findById(Integer idFuncionario) throws Exception{
		
		String query ="select * from funcionario where idfuncionario=?";
		
		openConnection();
		
		stmt = con.prepareStatement(query);
		stmt.setInt(1, idFuncionario);
		rs = stmt.executeQuery();
		
		Funcionario f = null;
		
		if(rs.next()){
			f = new Funcionario();
			f.setIdFuncionario(rs.getInt("idfuncionario"));
			f.setNome(rs.getString("nome"));
			f.setSalario(rs.getDouble("salario"));
			f.setFuncao(Funcao.valueOf(rs.getString("funcao")));
		}
		stmt.close();
		closeConnection();
		return f;
		
	}
	
	public List<Funcionario> findAll() throws Exception{
		
		String query = "select * from funcionario";
		
		openConnection();
		stmt = con.prepareStatement(query);
		rs = stmt.executeQuery();
		
		List<Funcionario> lista = new ArrayList<Funcionario>();
		
		while(rs.next()){
			Funcionario f = new Funcionario();
			
			f.setIdFuncionario(rs.getInt("idfuncionario"));
			f.setNome(rs.getString("nome"));
			f.setSalario(rs.getDouble("salario"));
			f.setFuncao(Funcao.valueOf(rs.getString("funcao")));
			
			lista.add(f);
		}
		
		stmt.close();
		closeConnection();
		return lista;
		
	}
	
	public List<Funcionario> findAllByNome(String nome) throws Exception{
		
		String query = "select * from funcionario where nome like ?";
		
		openConnection();
		
		stmt = con.prepareStatement(query);
		stmt.setString(1, "%"+nome+"%");
		rs = stmt.executeQuery();
		
	List<Funcionario> lista = new ArrayList<Funcionario>();
		
		while(rs.next()){
			Funcionario f = new Funcionario();
			f.setIdFuncionario(rs.getInt("idfuncionario"));
			f.setNome(rs.getString("nome"));
			f.setSalario(rs.getDouble("salario"));
			f.setFuncao(Funcao.valueOf(rs.getString("funcao")));
			
			lista.add(f);
		}
		
		stmt.close();
		closeConnection();
		return lista;
		
		
	}
		
}
