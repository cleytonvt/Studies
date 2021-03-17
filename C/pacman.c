#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <windows.h>
#include <conio.h>
#include <unistd.h>

#define ln 21 //quantidade de linhas do mapa
#define cl 28 //quantidade de colunas do mapa

typedef struct{
    char nome[20];
    int pont;
}rank;

rank rk;

FILE *arq;

void menu();
void iniciar();
void creditos();
void sair();
void ranking();
void mapatl();
void gotoxy();
void player();

char mapa[ln][cl] =
{
    {'|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|'},
    {'|','.','.','.','.','.','.','.','.','.','.','.','.','|','|','.','.','.','.','.','.','.','.','.','.','.','.','|'},
    {'|','.','|','|','|','|','.','|','|','|','|','|','.','|','|','.','|','|','|','|','|','.','|','|','|','|','.','|'},
    {'|','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','|'},
    {'|','.','|','|','|','|','.','|','|','.','|','|','|','|','|','|','|','|','.','|','|','.','|','|','|','|','.','|'},
    {'|','.','.','.','.','.','.','|','|','.','.','.','.','|','|','.','.','.','.','|','|','.','.','.','.','.','.','|'},
    {'|','|','|','|','|','|','.','|','|','|','|','|','.','|','|','.','|','|','|','|','|','.','|','|','|','|','|','|'},
    {'|','|','|','|','|','|','.','|','|','.','.','.','.','.','.','.','.','.','.','|','|','.','|','|','|','|','|','|'},
    {'|','|','|','|','|','|','.','|','|','.','|','|','|',' ',' ','|','|','|','.','|','|','.','|','|','|','|','|','|'},
    {'@','.','.','.','.','.','.','.','.','.','|',' ',' ',' ',' ',' ',' ','|','.','.','.','.','.','.','.','.','.','#'},
    {'|','|','|','|','|','|','.','|','|','.','|','|','|','|','|','|','|','|','.','|','|','.','|','|','|','|','|','|'},
    {'|','|','|','|','|','|','.','|','|','.','.','.','.','.','.','.','.','.','.','|','|','.','|','|','|','|','|','|'},
    {'|','|','|','|','|','|','.','|','|','.','|','|','|','|','|','|','|','|','.','|','|','.','|','|','|','|','|','|'},
    {'|','.','.','.','.','.','.','.','.','.','.','.','.','|','|','.','.','.','.','.','.','.','.','.','.','.','.','|'},
    {'|','.','|','|','|','|','.','|','|','|','|','|','.','|','|','.','|','|','|','|','|','.','|','|','|','|','.','|'},
    {'|','.','.','.','|','|','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','|','|','.','.','.','|'},
    {'|','|','|','.','|','|','.','|','|','.','|','|','|','|','|','|','|','|','.','|','|','.','|','|','.','|','|','|'},
    {'|','.','.','.','.','.','.','|','|','.','.','.','.','|','|','.','.','.','.','|','|','.','.','.','.','.','.','|'},
    {'|','.','|','|','|','|','|','|','|','|','|','|','.','|','|','.','|','|','|','|','|','|','|','|','|','|','.','|'},
    {'|','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','|'},
    {'|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|','|'}
};

/*main abrindo o menu*/
int main(void){
    menu();
return 0;
}

/*funcao para criar menu*/
void menu(){
    int op;

    setlocale(LC_ALL, "Portuguese");
    system("cls");

    printf("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n");
    printf("@@                                       @@\n");
    printf("@@                PACMAN                 @@\n");
    printf("@@                                       @@\n");
    printf("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n");

    printf("\n");
    printf("1. Iniciar Jogo \n");
    printf("2. Ranking \n");
    printf("3. Créditos \n");
    printf("0. Sair \n");
    scanf("%i",&op);

    switch(op){
         case 1:
            iniciar(); //inicia jogo
            break;
        case 2:
            ranking(); //mostra ranking
            break;
        case 3:
            creditos(); //tela de creditos
            break;
        case 0:
            sair(); //sai do jogo
            break;
        default:
            printf("Opção Inválida!");
            system("cls");
            menu();
            break;
    }

}

/*funcao para indicar posição inicial do player*/
void gotoxy(int xx, int yy){
    COORD coord;
    coord.X = xx;
    coord.Y = yy;
    SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE),coord);
}


/*cria jogador*/
int x=1,y=1;
int xa=1,ya=2;

void player(char mapa[ln][cl]){
    if(mapa[x][y]!= ' '){
        x = xa;
        y = ya;

    }
    else{
        mapa[    x][    y] = 'C';
        mapa[xa][ya] = ' ';
        }
    }


/*função para criar mapa*/
void mapatl(char mapa[ln][cl]){
    int i,n;
    gotoxy(0,0);
    system("cls");
    for(i=0;i<ln;i++){
        for(n=0;n<cl;n++){
            if(mapa[i][n]=='|')printf("%c",219);
            else        printf("%c",mapa[i][n]);
        }
        printf("\n");
    }
}


/*função que chama o inicio do game*/
void iniciar(){

int pt = 0;
int tecla;

    system("cls");
    printf("Player Name: \n");
    fflush(stdin);
    gets(rk.nome);

        do{
        tecla = 0;
        mapatl(mapa);
        if(kbhit())tecla = getch();
        player(mapa);
        xa=x;
        ya=y;
        switch(tecla){
        case 80://seta para Baixo
            x++;
            if (mapa[x][y]=='.'){
                mapa[x][y]=' ';
                pt++;}

            break;
        case 72://seta para Cima
            x--;
            if (mapa[x][y]=='.'){
                mapa[x][y]=' ';
                pt++;}


            break;
        case 77: //seta para Direita
            y++;
            if (mapa[x][y]=='.'){
                mapa[x][y]=' ';
                pt++;}


            break;
        case 75: //seta para Esquerda
            y--;
            if (mapa[x][y]=='.'){
                mapa[x][y]=' ';
                pt++;}


            break;
        }
    }while(tecla != 27); //ESC para sair

    rk.pont = pt;


    /*gravação do arquivo com nome e pontuação do player*/
    arq = fopen("ranking.txt","a");
    fprintf(arq,"\n| %-15s  |   %-11i|",rk.nome,rk.pont);
    fclose(arq);
}


/*função que chama a tela de ranking*/
void ranking(){

 //Exibe em forma de tabela (SQL)
    /*int j=1;*/
    int op=0;
    char tx[300];
    system("cls");

    printf("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n");
    printf("@@                                       @@\n");
    printf("@@               RANKING                 @@\n");
    printf("@@                                       @@\n");
    printf("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n");


    printf("\n _________________________________");
	printf("\n|NOME              |PONTUACAO     |");

    arq = fopen("ranking.txt","r");

    while(fgets(tx, 300, arq) != NULL){
    printf("%s", tx);
    }
    printf("\n|__________________|______________|");
    fclose(arq);



    while(op != 1 && op!= 2) {
        printf("\n\n");
        printf("\n1. Voltar ao Menu");
        printf("\n2. Sair\n");
        scanf("%d",&op);

        if(op == 1){
            menu();
        }else if(op == 2){
            sair();
        }
    }

}

/*função para sair do programa(jogo)*/
void sair(){
    system("cls");
    exit(1);
}

/*função que chama a tela de créditos*/
void creditos(){

    int op = 0;

    setlocale(LC_ALL, "Portuguese");
    system("cls");
    printf("Trabalho de Técnicas e Desenvolvimento de Algoritimos \n");
    printf("Desenvolvimento de Jogo em Linguagem C \n\n\n");
    printf("Grupo: \n");
    printf("Cleyton Victor Fernandes Soares Barreto, RGM: 23043024 \n");



    while(op != 1 && op!= 2) {
        printf("\n1. Voltar ao Menu");
        printf("\n2. Sair\n");
        scanf("%d",&op);

        if(op == 1){
            menu();
        }else if(op == 2){
            sair();
        }
    }
}



