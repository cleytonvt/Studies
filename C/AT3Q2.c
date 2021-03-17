#include <stdio.h>
#include <string.h>

int main(void) {
   
  char a[10]= "iguais";
  char b[10]= "teste";
  int i = 0;

  while(i == 0){
    if(strcmp(a, b)==0){
      printf("São iguais!") ;
      i = 1;
    }else{
      printf("São Diferentes!");
      i = 1;
    }      

  }
  return 0;
}
