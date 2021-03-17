#include <stdio.h>

int main(void) {

float projeto[10];
struct info{
  int codProj;
  char tpDesp;
  float valor;
};
for (int i=0; i < 10; i++){
    projeto[i] = 0.0;
  }
struct info fluxo;
 
printf("Código do Projeto: [Projeto 0 a 9 | -1 para Finalizar]\n");
scanf("%d",&fluxo.codProj);

while(fluxo.codProj != -1){
  printf("Digite o tipo R - Receitas | D - Despesas.\n");
  getchar();
  scanf("%c",&fluxo.tpDesp);
  
  if(fluxo.tpDesp == 'r' || fluxo.tpDesp == 'R'){
    printf("Agora, digite o valor:\n");
    scanf("%f",&fluxo.valor);
    projeto[fluxo.codProj] += fluxo.valor;
  }else{
    if(fluxo.tpDesp == 'd' || fluxo.tpDesp == 'D'){
      printf("Agora, digite o valor:\n");
      scanf("%f",&fluxo.valor);
      projeto[fluxo.codProj] -= fluxo.valor;
    }else{
      printf("Tipo de despesa invalido!\n\n");
    }
  }
  printf("\n\nDigite o código do projeto:\n");
  scanf("%d", &fluxo.codProj);
}   
  for (int i=0; i < 10; i++){
  printf("\nSaldo do projeto %d = %.2f",i, projeto[i]); 
  }
return 0;
}
