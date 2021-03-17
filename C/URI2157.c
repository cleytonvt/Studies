#include <stdio.h>

int main (){

	int num1, num2, cont1, cont2, cases, aux, aux2;
	scanf("%d", &cases);

	while (cases--)
	{
		scanf("%d %d", &num1, &num2);
		for (cont1 = num1; cont1 <= num2; cont1++)
			printf("%d", cont1);

    for (cont2 = num2; cont2 >= num1; cont2--)
		{	aux = cont2;
			while (aux)
			{
				aux2 = aux%10;
				printf("%d", aux2);
				aux = aux/10;
			}

		}	

	}
}
