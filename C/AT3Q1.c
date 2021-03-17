#include <stdio.h>
#include <string.h>

int main(void) {
   
  char a[5]= "Teste";
  char b[5];

  while(strlen(a) != 0){
    strcpy(b,a);
    puts(b);
  }

  return 0;
}
