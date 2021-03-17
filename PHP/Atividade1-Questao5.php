<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
      
        $nota = 7.5;
        
            if($nota >= 7) {
                echo "Passou por Média";
            } else if ($nota < 7 || $nota >=4) {
                echo "Vai para final";
            } else {
                echo "Reprovado!";   
            }
        ?>
    </body>
</html>
