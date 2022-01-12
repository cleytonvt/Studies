import 'dart:io';

main(List<String> args) {
  //variáveis utilizadas no fonte
  var price;
  double priceParse;
  double newPrice = 0;
  String classif = "";

  print("Digite o Preço do produto: ");
  price = stdin.readLineSync();
  priceParse = double.parse(price);

  if (price != null) {
    if (priceParse <= 50) {
      newPrice = priceParse * 1.05;
    } else if (priceParse > 50 && priceParse <= 120) {
      newPrice = priceParse * 1.10;
    } else {
      newPrice = priceParse * 1.15;
    }
  }

  if (price != null) {
    if (priceParse <= 80) {
      classif = "Barato";
    } else if (priceParse > 80 && priceParse <= 120) {
      classif = "Normal";
    } else if (priceParse > 120 && priceParse <= 200) {
      classif = "Caro";
    } else {
      classif = "Muito caro";
    }
  }

  print("Novo preço: RS $newPrice | Classificação: $classif");
}
