class Main {
  public static void main(String[] args) {
     
  String numbers = "76 12 64 68 98 26 99 09 53 49";
  String [] piramide = numbers.split(" ");
  int i , col = 1, numero;

  int[] num = new int[piramide.length];

  for(i = 0; i < piramide.length; i++){
    num[i] = Integer.parseInt(piramide[i]);
  }

  System.out.println("Lista: {"+numbers+"}");
  
  for(i = 0 ; i < num.length; col++){

    numero = num[i];
    for(int a = 0; a < col ; a++, i++){
      System.out.printf("%02d ",num[i]);

      if(num[i] < numero){
        numero = num[i];
      }
    }
    System.out.println();
  }
  }
}
