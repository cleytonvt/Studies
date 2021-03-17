#include <stdio.h>
#include <string.h>

int main(void) {
   
  char *nomes[3]= {"Cleyton\0","Clecio Helder Fernandes Soares Barreto\0","Calos Antonio\0"};
  int i;

  for(i = 0; i < 3 ; i++){
    if(strlen(nomes[i]) < 10 ){
      puts("Nome Pequeno");
    }else if(strlen(nomes[i]) >= 10 && strlen(nomes[i]) < 20  ){
      puts("Nome Médio");
    }else if(strlen(nomes[i]) >= 20){
      puts("Nome Grande");
    }else{
      puts("Impossivel dizer!");
    }
  }
  
  return 0;
}
