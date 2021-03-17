<html>
  <head>
    <title>Prova1a</title>
  </head>
  <body>

    <form action="script.php" method="post">
    <input type=text name=nome placeholder=Nome><br>
    <input type=number name=idade placeholder=Idade><br><br>
    <input type=submit value="OK">
    </form>
    
    <?php 
    
	$nome = $_POST["nome"];
	$idade = $_POST["idade"];
    	$serv = "localhost";
	$dbase = "provaPHP";
	$user = "root";
	$psw = "55225";
	
	$bd = mysqli_connect($serv, $user, $psw, $dbase);


	if (!$bd) {
    	  die("Falha na conexão: " . mysqli_connect_error());
	}
 
	
	$sql = "INSERT INTO Questao (nome, idade) VALUES ($nome,$idade)";
		if (mysqli_query($bd, $sql)) {
			echo "Gravado com sucesso!";
		} else {
			echo "Error: " . $sql . "<br>" . mysqli_error($conn);
		}
	
	mysqli_close($bd);
    ?> 
  </body>
</html>
