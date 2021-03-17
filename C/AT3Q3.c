#include <stdio.h>
#include <string.h>

int main(void) {
   
  char a[100]= "Ola, ";
  char b[20]= "Estas mensagens ";
  char c[20]= "foram concatenadas ";
  char d[20]= "utilizando strcat, ";
  char e[20]= "Obrigado.";
  int i = 1;

  while(i != 0){
    strcat(a,b);
    strcat(a,c);
    strcat(a,d);
    strcat(a,e);
    puts(a);
    i=0;
  }
  
  return 0;
}
