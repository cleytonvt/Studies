#include <stdio.h>

int main(void) {

//apenas trecho solicitado na questao, nao criei funcoes para as estruturas 

  struct horario{
    int hora;
    int minutos;
    int segundos;
  };

  struct data {
    int dia;
    int mes;
    int ano;
  };

  struct compromisso{
    struct data compdata;
    struct horario comphora;
    char mensagem[100];
  };
  return 0;
}
