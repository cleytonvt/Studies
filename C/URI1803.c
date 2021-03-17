#include <stdio.h>

/*Matring é uma mistura de Matriz e String. Ela foi desenvolvida pela UNILA (União dos Nerds para Integração da Lógica e da Aventura)
para manter mensagens seguras de escutas.

A primeira e última coluna de uma matring guarda a chave para traduzi-la na mensagem original. 
As colunas restantes de uma matring representam uma string codificada em ASCII, uma coluna por caractere.

Para uma mensagem com N caracteres, a matring correspondente é uma matriz 4x(N+2) de dígitos. 
Cada coluna é lida como um número de 4 dígitos; uma sequência de dígitos de cima para baixo é o
mesmo que uma sequência de dígitos da esquerda para a direita na horizontal.

Seja o primeiro número F, o último número L e os restantes uma sequência de números Mi,
onde 1 ≤ i ≤ N. A primeira coluna de uma matring é indexada por zero.

Para decodificar uma matring para uma string, calculamos: Ci = (F * Mi + L) mod 257,
onde Ci é o caractere em ASCII na posição i da mensagem original.

Sua tarefa é desenvolver um algoritmo para decodificar matrings.

Entrada
A entrada é uma matring, ou seja, uma matriz 4x(N+2) de dígitos (de 0 a 9) com 0 < N < 80.

Saída
A saída é dada em uma única linha e corresponde a string decodificada. Inclua o caractere de fim-de-linha após a string.*/

int main(){


return 0;
}
