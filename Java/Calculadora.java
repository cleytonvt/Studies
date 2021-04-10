import javax.swing.*;
import java.awt.event.*;

public class Calculadora extends JFrame {

	private static final long serialVersionUID = 1L;
    private static JFrame frame;
        
    private JTextField visor;
    private int read = 0;
    private int memo = 0;
    private char op;
    private int[] posX = {5,75,145,215}; 
    private int[] posY = {5,55,125,195,265};   
    private int larg = 65;
    private int alt = 65;
    private int i, j = 0, k= 0, l = 0, m = 0, n = 1, o = 4, w = 0;


    public Calculadora() {
       	frame = new JFrame();									//Instanciando o JFrame
	    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); 	//finalizar aplicacao ao fechar programa
	    frame.setSize(300,375); 								//setar tamanho do fram (largura,altura)
	    frame.getContentPane().setLayout(null); 				//layout do conteudo do frame
	    frame.setResizable(false); 								//setar se o frame sera expansivel ou nao
	    frame.setTitle("Calculadora"); 							//titulo do programa
		
	    visor = new JTextField();								//instanciando JTextField 
	    visor.setEnabled(false);								//desabilita a alteracao do campo texto
	    visor.setBounds(posX[0], posY[0], larg+210, alt-20); 	//posicionamento (distancia da esquerda,distancia do topo, largura, altura)
	    frame.add(visor);

        visor = new JTextField();
        visor.setBounds(0, 0, 300, 100);
        this.add(visor);
        
       	
	    //Trecho do código que cria, posiciona e acidiona os botões no frame,
	    //utilizado laço de repetição para os números e os botões de operação
	
		for ( i = 0; i < 16; i++ )
		{	
			if (i >= 1 && i <= 3){
				botoes[i] = new JButton(String.valueOf(i));
				botoes[i].setBounds(posX[j], posY[3], larg, alt);
				frame.add(botoes[i]);
				j++;
			} 
			
			else if (i >= 4 && i <= 6){
				botoes[i] = new JButton(String.valueOf(i));
				botoes[i].setBounds(posX[k], posY[2], larg, alt);
				frame.add(botoes[i]);
				k++;
			} 
			
			else if (i >= 7 && i <= 9){
				botoes[i] = new JButton(String.valueOf(i));
				botoes[i].setBounds(posX[l], posY[1], larg, alt);
				frame.add(botoes[i]);
				l++;
			}

			else if (i == 0){
				
				botoes[i] = new JButton(String.valueOf(i));
				botoes[i].setBounds(posX[m], posY[4], larg, alt);
				frame.add(botoes[i]);
			}

			/*else if (i >= 10 && i <=12){
				m++;
				botoes[i] = new JButton(op[m]);
				botoes[i].setBounds(posX[m], posY[4], larg, alt);
				frame.add(botoes[i]);
			}

			else if (i >= 13 && i < 16){
				botoes[i] = new JButton(op[o]);
				botoes[i].setBounds(posX[3], posY[n], larg, alt);
				frame.add(botoes[i]);
				n++;
				o++;
			}*/
		}}
/*
        numero1.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                read *= 10;
                read += 1;
                visor.setText(visor.getText() + "1");
            }
        });

        numero2.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                read *= 10;
                read += 2;
                visor.setText(visor.getText() + "2");
            }
        });
        
        numero3.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                read *= 10;
                read += 3;
                visor.setText(visor.getText() + "3");
            }
        });
        
        numero4.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                read *= 10;
                read += 4;
                visor.setText(visor.getText() + "4");
            }
        });
        
        numero5.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                read *= 10;
                read += 5;
                visor.setText(visor.getText() + "5");
            }
        });
        
        numero6.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                read *= 10;
                read += 6;
                visor.setText(visor.getText() + "6");
            }
        });
        
        numero7.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                read *= 10;
                read += 7;
                visor.setText(visor.getText() + "7");
            }
        });
        
        numero8.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                read *= 10;
                read += 8;
                visor.setText(visor.getText() + "8");
            }
        });
        
        numero9.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                read *= 10;
                read += 3;
                visor.setText(visor.getText() + "9");
            }
        });
        
        numero0.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                read *= 10;
                read += 0;
                visor.setText(visor.getText() + "0");
            }
        });

        somar.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                op = '+';
                memo += read;
                read = 0;
                visor.setText(memo + " + ");
            }
        });
        
        subtrair.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                op = '-';
                memo += read;
                read = 0;
                visor.setText(memo + " - ");
            }
        });
        
        multiplicar.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                op = 'X';
                memo += read;
                read = 0;
                visor.setText(memo + " X ");
            }
        });
        
        dividir.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                op = '/';
                memo += read;
                read = 0;
                visor.setText(memo + " / ");
            }
        });

        igual.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent evt) {
                switch (op) {
                    case '.': {
                        memo = memo + '.';
                        break;
                    }
                    case '+': {
                        memo += read;
                        break;
                    }
                    
                    case '-': {
                        memo -= read;
                        break;
                    }
                    
                    case 'X': {
                        memo *= read;
                        break;
                    }
                    
                    case '/': {
                        memo /= read;
                        break;
                    }
                    
                }
                read = 0;
                visor.setText("" + memo);
            }
        });
    } // construtor
*/
    public static void main(String[] args) {
        Calculadora exemplo = new Calculadora();
        exemplo.setVisible(true);
    }
} // classe