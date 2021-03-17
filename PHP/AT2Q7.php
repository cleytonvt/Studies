<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        
        <h3>Digite 10 numeros inteiros</h3>
        <form method="get">
            <input type="number" name="N1" placeholder="Primeiro"/>
            <input type="number" name="N2" placeholder="Segundo"/>
            <input type="number" name="N3" placeholder="Terceiro"/>
            <input type="number" name="N4" placeholder="Quarto"/>
            <input type="number" name="N5" placeholder="Quinto"/>
            <br>
            <br>
            <input type="number" name="N6" placeholder="Sexto"/>
            <input type="number" name="N7" placeholder="Setimo"/>
            <input type="number" name="N8" placeholder="Oitavo"/>
            <input type="number" name="N9" placeholder="Nono"/>
            <input type="number" name="N10" placeholder="Decimo"/>
            <br>
            <br>
            <input type = "submit" value = "Enviar" />
            <br>
            <br>
        </form>
        <?php
        
        $i;
        $ord =0;
        
        if (!empty($_GET["N1"])&& !empty($_GET["N2"]) && !empty($_GET["N3"]) && !empty($_GET["N4"]) && !empty($_GET["N5"]) && !empty($_GET["N6"]) && !empty($_GET["N7"]) && !empty($_GET["N8"]) && !empty($_GET["N9"]) && !empty($_GET["N10"])) {
             
            $val = array($_GET["N1"],$_GET["N2"],$_GET["N3"],$_GET["N4"],$_GET["N5"],$_GET["N6"],$_GET["N7"],$_GET["N8"],$_GET["N9"],$_GET["N10"]);    
                
                for($i = 0 ; $i < 10 ; $i++){
                    for($j = 0; $j < 9 ;$j++){
                        if($val[$j] > $val[$j+1]){
                            $ord = $val[$j];
                            $val[$j] = $val[$j+1];
                            $val[$j+1] = $ord;
                        }
                    }
                }
                for($i = 0; $i < 10; $i++){
                    echo "Posição " . $i . ": " . $val[$i] . "<br>";
                }
                
                echo "Por favor, preencher todos os campos!";
            }
        ?>
    </body>
</html>
