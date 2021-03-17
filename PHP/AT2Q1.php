<!DOCTYPE html>
<html>
    <head>
        <title> Ano Bissexto </title>
        <meta  charset = " UTF-8 ">
        
    </head>
    <corpo>
       
        <h2> Formulario </h2>
        
        <form  action = "Bissexto.php" method = "get">
            Digite um ano: 
            <input type = "number" name ="ano"/>
            <input type = "submit" value = "Enviar"/>
        </form>
        
        <?php
            
            
            if(!empty($_GET["ano"])){
                
               if(($_GET["ano"])%4 == 0 ){
                    echo  "Ano é Bissexto" ;
                } else {
                    echo  "Ano não é Bissexto" ;
                }
            }
                    ?>
    </body>
</html>
