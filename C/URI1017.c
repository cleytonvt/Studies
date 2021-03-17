#include <stdio.h>
 
int main() {
 
    int vel,tmp;
    float gas;
    
    scanf("%d %d",&tmp,&vel);
    gas=((float)tmp*vel)/12;
    printf("%.3f\n",gas);
    
    return 0;
}
