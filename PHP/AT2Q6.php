<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>1000 numeros primos</title>
    </head>
    <body>
        
    <?php
    $t = 1000;
    $n =0;

    for($i = 1; $n < $t; $i++){
    $cont = 0;
     
        for($j = $i; $j >= 1; $j--){

            if (($i % $j) == 0) {
                $cont++;
            }
        }
        if ($cont == 2){
            $n++;
            echo "Primo nº ".$n.": ".$i . '<br>';
        }
    }
    ?>
    </body>
</html>
