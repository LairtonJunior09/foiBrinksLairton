<%@ page
	import="java.util.*,
br.com.lairton.foiBrinksLairton.database.*,
br.com.lairton.foiBrinksLairton.model.*"
	import="java.text.SimpleDateFormat"%>
<!DOCTYPE html5>
<html>
<head>
<title>Produtos</title>
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
					<th>Nome do produto</th>
					<th>Marca</th>
					<th>Faixa etária indicada</th>
					<th>Altura</th>
					<th>Largura</th>
					<th>Profundidade</th>
					<th>Peso</th>
					<th>Preço</th>
					<th>Data de cadastro no sistema</th>
					<th colspan="2">Gerenciamento</th>
				</tr>
			</thead>
			<%
				SimpleDateFormat sdt = new SimpleDateFormat("dd/MM/yyyy");
																																													ClienteDao dao = new ClienteDao();
																																													List<Cliente> clientes = dao.getLista();
					Produto produto = new Produto();																																								for (Cliente cliente : clientes ) {
			%>
			<tbody class="item">
				<tr>

					<td><%=produto.getNomeProduto()%></td>
					<td><%=produto.getMarca()%></td>
					<td><%=produto.getFaixaEtaria()%></td>
					<td><%=produto.getAltura()%></td>
					<td><%=produto.getLargura()%></td>
					<td><%=produto.getProfundidade()%></td>
					<td><%=produto.getPeso()%></td>
					<td><%=produto.getPreco()%></td>

					<td><%=sdt.format(produto.getDataCadastro().getTime())%></td>
					<td><a
						href="altera-cliente.jsp?id=<%=cliente.getId_cliente()%>"><i
							class="fas fa-user-edit"></i>Alterar</a></td>
					<td><a
						href="remove-cliente.jsp?id=<%=cliente.getId_cliente()%>"><i
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