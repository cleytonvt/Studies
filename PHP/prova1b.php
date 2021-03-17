<html>
  <head>
    <title>Prova1b</title>
  </head>
  <body>

    <br>
	Dados do Banco provaPHP, Tabela Questão
	<br>
	<br>
	
    </form>
    
    <?php 
    
    $serv = "localhost";
	$dbase = "provaPHP";
	$user = "root";
	$psw = "55225";
	$qry;
	
	$bd = mysqli_connect($serv, $user, $psw, $dbase);

	if (!$bd) {
    	  die("Falha na conexão: " . mysqli_connect_error());
	}
 
	mysql_select_db( $dbase ) or die( 'Erro na seleção do banco' );
	
	$qry= "SELECT nome, idade FROM Questao"
	$result = mysql_query( $qry ) or die(' Erro na query:' . $qry . ' ' . mysql_error() );
	
	while ($row = mysql_fetch_array( $result )) { 
		print $row[nome] . " - " . $row[idade]; 
	}
	
	mysqli_close($bd);
    ?> 
  </body>
</html>
