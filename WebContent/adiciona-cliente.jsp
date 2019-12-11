<html>
	<head>
	<title>Inserindo um novo Cliente</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" 
	crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/style-add.css">
	</head>
	<body>
		<form class="box" action="adiciona-cliente">
			<h1>Novo Cliente</h1>
			<p>Dados pessoais</p>
			<input type="text" name="nome" required="true" placeholder="Nome"/><br/>
			<input type="email" name="email" placeholder="E-mail"/><br/>
			<div id="msgemail"></div>
			<input type="text" name="dataNascimento" onkeypress="mascaraData(this, event)" placeholder="Data de Nascimento"/><br/>
			<p>Endereço</p>
			<select name="uf" required="true"/>
				<option value="" disabled selected>Estado</option>
				<option value="AC">Acre</option>
				<option value="AL">Alagoas</option>
				<option value="AP">Amapá</option>
				<option value="AM">Amazonas</option>
				<option value="BA">Bahia</option>
				<option value="CE">Ceará</option>
				<option value="DF">Distrito Federal</option>
				<option value="ES">Espírito Santo</option>
				<option value="GO">Goiás</option>
				<option value="MA">Maranhão</option>
				<option value="MT">Mato Grosso</option>
				<option value="MS">Mato Grosso do Sul</option>
				<option value="MG">Minas Gerais</option>
				<option value="PA">Pará</option>
				<option value="PB">Paraíba</option>
				<option value="PR">Paraná</option>
				<option value="PE">Pernambuco</option>
				<option value="PI">Piauí</option>
				<option value="RJ">Rio de Janeiro</option>
				<option value="RN">Rio Grande do Norte</option>
				<option value="RS">Rio Grande do Sul</option>
				<option value="RO">Rondônia</option>
				<option value="RR">Roraima</option>
				<option value="SC">Santa Catarina</option>
				<option value="SP">São Paulo</option>
				<option value="SE">Sergipe</option>
				<option value="TO">Tocantins</option>
			</select></br>
			<input type="text" name="cidade" required="true" placeholder="Cidade"/><br/>
			<input type="text" name="logradouro" required="true" placeholder="Logradouro"/><br/>
			<input type="number" name="numero" min="1" required="true" placeholder="Número"/><br/>
			<input type="submit" value="Salvar"/>
		</form>
		 <a href="index.jsp"><i class="fas fa-angle-left"></i></a>
		 <audio autoplay loop type="audio/mp3" src="audio/espaco.mp3"></audio>
		 <script type="text/javascript" src="js/script.js"></script>
	</body>
</html>