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

import br.com.lairton.foiBrinksLairton.database.ClienteDao;
import br.com.lairton.foiBrinksLairton.model.Cliente;


@WebServlet("/adcCliente")

public class AdcClienteServlet extends HttpServlet {
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		PrintWriter out = response.getWriter();

		String nome_completo = request.getParameter("nome");
		String estadoCivil = request.getParameter("estadoCivil");
		String genero = request.getParameter("genero");
		String rua = request.getParameter("rua");
		String bairro = request.getParameter("bairro");
		String cep = request.getParameter("cep");
		String estado = request.getParameter("estado");
		String cidade = request.getParameter("cidade");
		String cpf = request.getParameter("cpf");

		String dataNasc = request.getParameter("dataNascimento");
		Calendar dataNascimento = null;

		String dataCads = request.getParameter("dataCadastro");
		Calendar dataCadastro = null;

		try {
			Date date = (Date) new SimpleDateFormat("dd/MM/yyyy")
					.parse(dataNasc);
			// DataNascimento
			dataNascimento = Calendar.getInstance();
			dataNascimento.setTime(date);
			// DataCadastro
			dataCadastro = Calendar.getInstance();
			dataCadastro.setTime(date);

		} catch (ParseException e) {
			out.println("Erro de convers�o da data");
			return;
		}

		Cliente cliente = new Cliente();
		cliente.setNome_completo(nome_completo);
		cliente.setEstadoCivil(estadoCivil);
		cliente.setG�nero(genero);
		cliente.setRua(rua);
		cliente.setBairro(bairro);
		cliente.setCep(cep);
		cliente.setEstado(estado);
		cliente.setCidade(cidade);
		cliente.setCpf(cpf);

		cliente.setDataNascimento(dataNascimento);
		cliente.setDataCadastro(dataCadastro);

		// salva o contato
		ClienteDao dao = new ClienteDao();
		dao.addCliente(cliente);

		RequestDispatcher rd = request.getRequestDispatcher("/index.html");
		rd.forward(request, response);
	}
}