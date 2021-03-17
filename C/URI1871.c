#include <stdio.h>

int main() {
int m,n,st,cont,var;
char val[30];
 
scanf("%d %d",&m,&n);
  if(m!=0 && n!=0){
    st=m+n;
    var=sprintf(val,"%d",st);
    val[var+1]='\0';
      for(cont=0;cont<var;cont++){
        if(val[cont]!='0'){
          printf("%c",val[cont]);
        }
      }
  }   
return 0;
}
