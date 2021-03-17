#include <stdio.h>

int main(void) {
    int num;
    printf("Digite um numero: ");
    scanf("%d",&num);

    if (num % 2 == 0) {
      printf("O número é par!");
    } else {
      printf("O número é impar!");
    }

  return 0;
}
