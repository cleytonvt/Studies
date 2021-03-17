#include <string.h>
#include <stdio.h>
#include <ctype.h>

int main()
{
	char string[100];
	int j, a = 0;
		
  printf("Digite aqui um nome: ");
	scanf("%s",string);

	j=strlen(string)-1;
	
	for (int i = 0; i < strlen(string)	; i++)
	{
		if(toupper(string[i])==toupper(string[j])){
			a++;
			j--;
		}
	}
	if(a==strlen(string)){
		printf("é um palindromo");
	}else{
    printf("Não é um palindromo");
  }

	return 0;
}
