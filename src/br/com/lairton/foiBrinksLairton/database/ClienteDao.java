package br.com.lairton.foiBrinksLairton.database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.com.lairton.foiBrinksLairton.model.Cliente;

public class ClienteDao {
	private Connection connection;

	public ClienteDao() {
		connection = new ConnectionFactory().getConnection();

	}

	public void addCliente(Cliente cliente) {
		String bd = "INSERT INTO `clientes`(`nome_completo`, `estadoCivil`, `gênero`, `rua`,"
				+ " `bairro`, `cep`, `estado`, `cidade`, `cpf`, `dataNascimento`, `dataCadastro`) "
				+ "VALUES (?,?,?,?,?,?,?,?,?,?,?)";

		try {
			PreparedStatement prepState = connection.prepareStatement(bd);
			prepState.setString(1, cliente.getNome_completo());
			prepState.setString(2, cliente.getEstadoCivil());
			prepState.setString(3, cliente.getGênero());
			prepState.setString(4, cliente.getRua());
			prepState.setString(5, cliente.getBairro());
			prepState.setString(6, cliente.getCep());
			prepState.setString(7, cliente.getEstado());
			prepState.setString(8, cliente.getCidade());
			prepState.setString(9, cliente.getCpf());
			prepState.setDate(10, new Date(cliente.getDataNascimento()
					.getTimeInMillis()));
			prepState.setDate(11, new Date(cliente.getDataCadastro()
					.getTimeInMillis()));

			prepState.execute();
			prepState.close();

		} catch (SQLException exp) {
			throw new RuntimeException(exp);
		}

	}
}
