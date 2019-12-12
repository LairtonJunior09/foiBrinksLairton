package br.com.lairton.foiBrinksLairton.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.lairton.foiBrinksLairton.database.ProdutoDao;
import br.com.lairton.foiBrinksLairton.model.Produto;

@WebServlet("/adcProuto")
public class AdcProdutoServlet extends HttpServlet {
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		PrintWriter out = response.getWriter();

		String nomeProduto = request.getParameter("nome produto");
		String marca = request.getParameter("marca");
		String faixaEtaria = request.getParameter("faixa etaria");
		double altura = Double.parseDouble(request.getParameter("altura"));
		double largura = Double.parseDouble(request.getParameter("largura"));
		double  profundidade = Double.parseDouble(request.getParameter("profundidade"));
		double peso =Double.parseDouble(request.getParameter("peso"));
		double preco = Double.parseDouble(request.getParameter("preço"));
		
		String dataCads = request.getParameter("dataCadastro");
		Calendar dataCadastro = null;

		try {
			Date date = (Date) new SimpleDateFormat("dd/MM/yyyy")
					.parse(dataCads);

			// DataCadastro
			dataCadastro = Calendar.getInstance();
			dataCadastro.setTime(date);

		} catch (ParseException e) {
			out.println("Erro de conversão da data");
			return;
		}

		Produto produto = new Produto();
		produto.setNomeProduto(nomeProduto);
		produto.setMarca(marca);
		produto.setFaixaEtaria(faixaEtaria);
		produto.setAltura(altura);
		produto.setLargura(largura);
		produto.setProfundidade(profundidade);
		produto.getPeso();
		produto.getPreco();
		
		produto.setDataCadastro(dataCadastro);


		// salva o contato
		ProdutoDao dao = new ProdutoDao();
		dao.addProduto(produto);

		RequestDispatcher rd = request.getRequestDispatcher("/index.html");
		rd.forward(request, response);
	}
}