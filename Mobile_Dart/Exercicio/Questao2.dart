main() {
  var sFuncionarios = ['Tobias', 'Cleitin', 'Geraldo'];
  var nExtras = [2900.00, 700.00, 300.00];
  var nFaltas = [5.00, 25.00, 18.00];
  var nH = [0.00, 0.00, 0.00];
  var nValExtra = [0.00, 0.00, 0.00];
  int i;

  for (i = 0; i < sFuncionarios.length; i++) {
    nH[i] = (nExtras[i]) - (2 / 3 * (nFaltas[i]));

    if (nH[i] > 2400) {
      nValExtra[i] = 500;
    } else if (nH[i] >= 1800 && nH[i] <= 2400) {
      nValExtra[i] = 400;
    } else if (nH[i] >= 1200 && nH[i] <= 1800) {
      nValExtra[i] = 300;
    } else if (nH[i] >= 600 && nH[i] <= 1200) {
      nValExtra[i] = 200;
    } else {
      nValExtra[i] = 100;
    }

    print("Funcionario: " +
        sFuncionarios[i] +
        " | Gratificação: " +
        nValExtra[i].toString());
  }
}
