import 'dart:io';

main() {
  String? nOpc;

  print("Menu de Opções");
  print("1-Média Aritmética");
  print("2-Média Ponderada");
  print("3-Sair");

  nOpc = stdin.readLineSync();

  if (nOpc != null) {
    switch (nOpc) {
      case "1":
        calcMedia(nOpc);
        break;
      case "2":
        calcMedia(nOpc);
        break;
      case "3":
        print("Fechando programa...");
        exit(0);
      default:
        print("Opção inválida, fechando programa...");
        exit(0);
    }
  }
}

calcMedia(nOpc) {
  var N1;
  var N2;
  var aNotas = [0.00, 0.00];
  var nMediaArit;
  var nMediaPond;

  print("Digite a primeira nota");
  N1 = stdin.readLineSync();
  N1 = double.parse(N1);

  print("Digite a segunda nota");
  N2 = stdin.readLineSync();
  N2 = double.parse(N2);

  aNotas[0] = N1;
  aNotas[1] = N2;

  nMediaArit = ((aNotas[0] + aNotas[1]) / aNotas.length);
  nMediaPond = ((aNotas[0] * 1) + aNotas[1] * 2) / (aNotas[0] + aNotas[1]);

  if (nOpc == "1") {
    print("Média Aritmédica = $nMediaArit");
  } else {
    print("Média Ponderada = $nMediaPond");
  }
}
