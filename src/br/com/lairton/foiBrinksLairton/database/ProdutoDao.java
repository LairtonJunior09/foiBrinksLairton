package br.com.lairton.foiBrinksLairton.database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.lairton.foiBrinksLairton.model.Produto;

public class ProdutoDao {
	private Connection connection;

	public ProdutoDao() {
		connection = new ConnectionFactory().getConnection();

	}

	public void addProduto(Produto produto) {
		String bd = "INSERT INTO `produtos`(`nomeProduto`, `marca`, `faixaEtaria`, `altura`,"
				+ " `largura`, `profundidade`, `peso`, `preco`, `dataCadastro`)"
				+ " VALUES (?,?,?,?,?,?,?,?,?)";

		try {
			PreparedStatement prepState = connection.prepareStatement(bd);
			prepState.setString(1, produto.getNomeProduto());
			prepState.setString(2, produto.getMarca());
			prepState.setString(3, produto.getFaixaEtaria());
			prepState.setLong(4, (long) produto.getAltura());
			prepState.setLong(5, (long) produto.getLargura());
			prepState.setLong(6, (long) produto.getProfundidade());
			prepState.setLong(7, (long) produto.getPeso());
			prepState.setLong(8, (long) produto.getPreco());
			prepState.setDate(9, new Date(produto.getDataCadastro()
					.getTimeInMillis()));

			prepState.execute();
			prepState.close();

		} catch (SQLException exp) {
		}
	}
}
