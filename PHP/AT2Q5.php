<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Triangulo de Pascal + resultado algebrico</title>
    </head>
    <body>
        <form method="get">
            <input type="number" name="n" placeholder="Digite de 0 a 3">
            <input type="submit" value="Enviar">
        </form>
        <br>
        <br>
    <?php
    $pascal = array(1,2,3);
    $pot = $_GET["n"];
    
        echo $pascal[0]."<br>";
        echo $pascal[0].$pascal[0]."<br>";
        echo $pascal[0].$pascal[1].$pascal[0]."<br>";
        echo $pascal[0].$pascal[2].$pascal[2].$pascal[0];
    
        if(($pot>=0 && $pot<=3)){
            echo "<br><br> Resultado da Funcao Algebrica = x^".$pot."+".$pot."x + 1";
        }
    ?>
    </body>
</html>
