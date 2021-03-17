#include <stdio.h>

int main(void) {
    int ano;
    printf("Digite um ANO: ");
    scanf("%d",&ano);

    if (ano % 4 == 0) {
      printf("O ano é bissexto!");
    } else {
      printf("O ano não é bissexto!");
    }
  return 0;
}
