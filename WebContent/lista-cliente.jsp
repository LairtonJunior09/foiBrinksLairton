<%@ page
	import="java.util.*,
br.com.lairton.foiBrinksLairton.database.*,
br.com.lairton.foiBrinksLairton.model.*"
	import="java.text.SimpleDateFormat"%>
<!DOCTYPE html5>
<html>
<head>
<title>Clientes</title>
<!-- 		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css"> -->
<!-- 		<link rel="stylesheet" type="text/css" href="css/style-lista.css"> -->
<!-- 		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"  -->
<!-- 		crossorigin="anonymous"> -->
<!-- 		<link href="https://fonts.googleapis.com/css?family=Abel&display=swap" rel="stylesheet"> -->
<!-- 		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script> -->
</head>
<body>
	<a id="botao" href="index.jsp"><i class="fas fa-angle-left"></i></a>
	<div class="container">
		<table class="bordered striped centered">
			<thead class="topico">
				<tr>
					<th>Id</th>
					<th>Nome</th>
					<th>Estado Civil</th>
					<th>Gênero</th>
					<th>Rua</th>
					<th>Bairro</th>
					<th>Cep</th>
					<th>Estado</th>
					<th>Cidade</th>
					<th>Cpf</th>

					<th>Data de Nascimento</th>
					<th colspan="2">Gerenciamento</th>
				</tr>
			</thead>
			<%
				SimpleDateFormat sdt = new SimpleDateFormat("dd/MM/yyyy");
								ClienteDao dao = new ClienteDao();
								List<Cliente> clientes = dao.getLista();
								for (Cliente cliente : clientes ) {
			%>
			<tbody class="item">
				<tr>
					<td><%=cliente.getId_cliente()%></td>
					<td><%=cliente.getNome_completo()%></td>
					<td><%=cliente.getCpf()%></td>
					<td><%=cliente.getGênero()%></td>
					<td><%=cliente.getEstadoCivil()%></td>
					<td><%=cliente.getCep()%></td>
					<td><%=cliente.getBairro()%></td>
					<td><%=cliente.getCidade()%></td>
					<td><%=cliente.getRua()%></td>
					<td><%=sdt.format(cliente.getDataNascimento().getTime())%></td>
					<td><%=sdt.format(cliente.getDataCadastro().getTime())%></td>
					<td><a href="altera-cliente.jsp?id=<%=cliente.getId_cliente()%>"><i
							class="fas fa-user-edit"></i>Alterar</a></td>
					<td><a href="remove-cliente.jsp?id=<%=cliente.getId_cliente()%>"><i
							class="fas fa-user-minus"></i>Remover</a></td>
				</tr>
			</tbody>
			<%
				}
			%>
		</table>
	</div>
	<button id="topBtn">
		<i class="fas fa-arrow-up"></i>
	</button>
	<audio autoplay loop type="audio/mp3" src="audio/espaco.mp3"></audio>
	<script type="text/javascript" src="js/script.js"></script>
</body>
</html>