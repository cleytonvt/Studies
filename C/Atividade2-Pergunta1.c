#include <stdio.h>

int main(void) {
    int opcao = 1;
    while(opcao>=0){
      if (opcao >= 1 && opcao <= 9) {
        printf("Digite de 1 a 9 para continuar ou 0 para Sair: ");
        scanf("%d",&opcao);
      } else if (opcao == 0) {
        printf("Adeus!");
        break;
      } else {
        printf("Condição inexistente!"); 
        break; 
      }
    }
  return 0;
}
