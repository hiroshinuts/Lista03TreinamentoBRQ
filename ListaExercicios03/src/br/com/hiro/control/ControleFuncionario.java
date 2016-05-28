package br.com.hiro.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.hiro.entities.Funcionario;
import br.com.hiro.entities.types.Funcao;
import br.com.hiro.persistence.DAOFuncionario;

@WebServlet("/ControleFuncionario")
public class ControleFuncionario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ControleFuncionario() {
		// TODO Auto-generated constructor stub
	}

	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	String acao = request.getParameter("acao");
    	
    	if(acao != null){
    		if(acao.equalsIgnoreCase("cadastrar")){
    			
    			try{
    				Funcionario f = new Funcionario();
    				f.setNome(request.getParameter("nome"));
    				f.setSalario(Double.parseDouble(request.getParameter("salario")));
    				f.setFuncao(Funcao.valueOf(request.getParameter("funcao")));
    				
    				DAOFuncionario d =  new DAOFuncionario();
    				d.insert(f);
    				
    				request.setAttribute("mensagem", "Funcionario " + f.getNome() + ", cadastrado com Sucesso");
    				
    			}catch(Exception e){
    				request.setAttribute("mensagem", "Ocorreu um erro no cadastro" + e.getMessage());
    			}finally{
    				request.getRequestDispatcher("cadastroFuncionario.jsp").forward(request, response);
    				
    			}
    		
    			
    			
    		}
    		else if(acao.equalsIgnoreCase("visualizar")){
    			
    			try{
    				//resgata
    				Integer idFuncionario = Integer.parseInt(request.getParameter("id"));
    				
    				//busca
    				DAOFuncionario d = new DAOFuncionario();
    				Funcionario f = d.findById(idFuncionario);
    				
    				//envia para o request.getAttribute
    				request.setAttribute("funcionario", f);
    				
    			}catch(Exception e){
    				
    				request.setAttribute("mensagem", "Erro: " + e.getMessage());
    				
    			}finally{
    				
    				request.getRequestDispatcher("detalhesFuncionario.jsp").forward(request, response);
    				
    			}
    		}
    		
    		else if(acao.equalsIgnoreCase("excluir")){
    			
    			try{
    				
    				Integer idFuncionario = Integer.parseInt(request.getParameter("id"));
    				DAOFuncionario d = new DAOFuncionario();
    				d.delete(idFuncionario);
    				
    				request.setAttribute("mensagem", "Funcionario excluido com sucesso");
    				
    			}catch(Exception e){
    				request.setAttribute("mensagem", "Erro: " + e.getMessage());
    			
    			}finally{
    				request.getRequestDispatcher("consultaFuncionario.jsp").forward(request, response);
    			}
    			
    		}
    		
    		else if(acao.equalsIgnoreCase("editar")){
    			
    			try{
    				
    				Integer idFuncionario = Integer.parseInt(request.getParameter("id"));
    				
    				DAOFuncionario d = new DAOFuncionario();
    				Funcionario f = d.findById(idFuncionario);
    				request.setAttribute("funcionario", f);
    				
    			}catch(Exception e){
    				
    				request.setAttribute("mensagem", "Erro: " + e.getMessage());
    				
    			}finally{
    				
    				request.getRequestDispatcher("editFuncionario.jsp").forward(request, response);
    				
    			}
    			
    			
    		}
    		
    		else if(acao.equalsIgnoreCase("atualizar")){
    			
    			try{
    				
    				Funcionario f = new Funcionario();
    				DAOFuncionario d = new DAOFuncionario();
    				
    				f.setIdFuncionario(Integer.parseInt(request.getParameter("idfuncionario")));
    				f.setNome(request.getParameter("nome"));
    				f.setSalario(Double.parseDouble(request.getParameter("salario")));
    				f.setFuncao(Funcao.valueOf(request.getParameter("funcao")));
    				
    				d.update(f);
    				
    				request.setAttribute("mensagem", "Funcionario " + f.getNome() + ", atualizado com sucesso!");
    				
    				
    			}catch(Exception e){
    				
    				request.setAttribute("mensagem", "Erro: " + e.getMessage());
    				
    			}finally{
    					
    				request.getRequestDispatcher("consultaFuncionario.jsp").forward(request, response);
    				
    			}
    			
    			
    		}
    		//fim do primeiro if != null
    		
    	}
    		
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		execute(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		execute(request, response);
	}

}
