#include <stdio.h>
 
int main() {
 
    int num,cont,F[50];

    scanf("%d",&num);
    F[0] = 0;
    F[1] = 1;
    if (num > 0 && num < 46) {
    for (cont = 0 ; cont < num ; cont++) {
        if (cont < 2) {
          printf(" %d",F[cont]);
        } else if (cont >=2) {
          F[cont] = F[cont-1]+F[cont-2];
          printf(" %d",F[cont]);
        }
      }
    }
    return 0;
}
