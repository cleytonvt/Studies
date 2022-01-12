main() {
  var codCity = ['2507507', '2504009', '2510808', '2518854', '2588796'];
  var nVeiculos = [389934, 184118, 9620, 1154, 1458];
  var nAcidentes = [5769, 1285, 854, 148, 121];
  var nIndice = [0.00, 0.00, 0.00, 0.00, 0.00];
  var nTotalVeiculos = 0;
  var nMediaVeiculos;
  var nTotalAcidentes = 0;
  var nMediaAcidentes;
  var nCity2K = 0;
  int i;

  //laço para calcular indices
  for (i = 0; i < codCity.length; i++) {
    nIndice[i] = nVeiculos[i] / nAcidentes[i];
  }

  //calcula media de veiculos
  for (i = 0; i < nVeiculos.length; i++) {
    nTotalVeiculos += nVeiculos[i];
  }

  //calcula total de acidentes de cidades com menos de 2000 veiculos
  for (i = 0; i < nVeiculos.length; i++) {
    if (nVeiculos[i] < 2000) {
      nTotalAcidentes += nAcidentes[i];
      nCity2K += 1;
    }
  }

  //funcao para alinhar indice de forma crescente
  nIndice.sort();

  //calcula media de veiculos
  nMediaVeiculos = nTotalVeiculos / nVeiculos.length;

  //calcula media de acidentes de cidades com menos de 2000 veiculos
  nMediaAcidentes = nTotalAcidentes / nCity2K;

  //Imprime a resposta A
  print("Resposta a)");
  print("Cidade Menor Indice: " + nIndice[0].toString());
  print("Cidade Maior Indice: " + nIndice.last.toString());

  //Imprime a resposta B
  print("\nResposta b)");
  print("Média de veículos das cinco cidades juntas: $nMediaVeiculos");

  //Imprime a resposta C
  print("\nResposta c)");
  print(
      "Média de acidentes das cidades com mais de 2000 veículos: $nMediaAcidentes");
}
