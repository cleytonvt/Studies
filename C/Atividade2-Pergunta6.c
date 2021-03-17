#include <stdio.h>

int main(void) {
    int rz,PG = 1,qt,el;

    printf("Digite a quantidade de elementos da PG: ");
    scanf("%d",&el);
    printf("\nDigite agora a razao: ");
    scanf("%d",&rz);

    for (qt=1 ; qt <= el ; qt++ ){
      printf("%d,",PG);
      PG = PG * rz;
    }
  return 0;
}
