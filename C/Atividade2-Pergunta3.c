#include <stdio.h>

int main(void) {
    int num,fat;
    printf("Digite um numero: ");
    scanf("%d",&num);

    for (fat = 1; num >= 1; num--) {
      fat = fat * num;
    }

    printf("%d", fat);
  return 0;
}
