#include <stdio.h>

int main(void) {
    int rz,PA = 0,qt,el;

    printf("Digite a quantidade de elementos da PA: ");
    scanf("%d",&el);
    printf("\nDigite agora a razao: ");
    scanf("%d",&rz);

    for (qt=1 ; qt <= el ; qt++ ){
      printf("%d,",PA);
      PA = PA + rz;
    }
  return 0;
}
