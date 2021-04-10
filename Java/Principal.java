import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JTextField;

public class Principal implements ActionListener{

//declaração de variáveis utilizadas no fonte
private static JFrame frame;
private JTextField visor;
private JButton[] botoes = new JButton[16];
private String[] op = {".", "+", "/", "*", "-", "="}; 
private String opr;
private int[] posX = {5,75,145,215}; 
private int[] posY = {5,55,125,195,265};   
private int larg = 65;
private int alt = 65;
private int i, j = 0, k= 0, l = 0, m = 0, n = 1, o = 2, h =1;
int read = 0, memo = 0;

public static void main(String[] args) {
	
	Principal app = new Principal();						// instanciando o objeto app
	app.go();												//chama metodo go, no objeto app
	frame.setVisible(true); 								//setar se o frame será visivel ou não
}
	
private void go() {
	
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
	

	
	//Trecho do código que cria, posiciona e acidiona os botões no frame,
	//utilizado laço de repetição para os números e os botões de operação
	
	
		for ( i = 0; i < 16; i++ )
		{	
			if (i == 0){
				botoes[i] = new JButton(String.valueOf(i));
				botoes[i].setBounds(posX[0], posY[4], larg, alt);
				frame.add(botoes[i]);
			}
			
			else if (i >= 1 && i <= 3){
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

			else if (i >= 10 && i <=11){
				botoes[i] = new JButton(op[m]);
				botoes[i].setBounds(posX[h], posY[4], larg, alt);
				frame.add(botoes[i]);
				m++;
				h++;
			}

			else if (i >= 12 && i < 16){
				botoes[i] = new JButton(op[o]);
				botoes[i].setBounds(posX[3], posY[n], larg, alt);
				frame.add(botoes[i]);
				n++;
				o++;
			}
		}
		
			botoes[0].addActionListener(new ActionListener() {
				public void actionPerformed(ActionEvent evt) {
					read += 0;
					visor.setText(visor.getText() + "0");
				}
			});
		
			botoes[1].addActionListener(new ActionListener() {
	            public void actionPerformed(ActionEvent evt) {
	                read += 1;
	                visor.setText(visor.getText() + "1");
	            }
	        });

	        botoes[2].addActionListener(new ActionListener() {
	            public void actionPerformed(ActionEvent evt) {
	                read += 2;
	                visor.setText(visor.getText() + "2");
	            }
	        });
	        
	        botoes[3].addActionListener(new ActionListener() {
	            public void actionPerformed(ActionEvent evt) {
	                read += 3;
	                visor.setText(visor.getText() + "3");
	            }
	        });
	        
	        botoes[4].addActionListener(new ActionListener() {
	            public void actionPerformed(ActionEvent evt) {
	                read += 4;
	                visor.setText(visor.getText() + "4");
	            }
	        });
	        
	        botoes[5].addActionListener(new ActionListener() {
	            public void actionPerformed(ActionEvent evt) {
	                read += 5;
	                visor.setText(visor.getText() + "5");
	            }
	        });
	        
	        botoes[6].addActionListener(new ActionListener() {
	            public void actionPerformed(ActionEvent evt) {
	                read += 6;
	                visor.setText(visor.getText() + "6");
	            }
	        });
	        
	        botoes[7].addActionListener(new ActionListener() {
	            public void actionPerformed(ActionEvent evt) {
	                read += 7;
	                visor.setText(visor.getText() + "7");
	            }
	        });
	        
	        botoes[8].addActionListener(new ActionListener() {
	            public void actionPerformed(ActionEvent evt) {
	                read += 8;
	                visor.setText(visor.getText() + "8");
	            }
	        });
	        
	        botoes[9].addActionListener(new ActionListener() {
	            public void actionPerformed(ActionEvent evt) {
	                read += 9;
	                visor.setText(visor.getText() + "9");
	            }
	        });
	        
	        /*nao consegui colocar este botao para funcionar, quando utilizo ele soma*/
	       /* botoes[10].addActionListener(new ActionListener() {
	            public void actionPerformed(ActionEvent evt) {
	                opr = op[0];
	                memo += read;
	                read = 0;
	                visor.setText(memo + " . ");
	            }
	        });*/
	        
	        botoes[11].addActionListener(new ActionListener() {
	            public void actionPerformed(ActionEvent evt) {
	                opr = op[1];
	                memo += read;
	                read = 0;
	                visor.setText(memo + " + ");
	            }
	        });
	        
	        botoes[12].addActionListener(new ActionListener() {
	            public void actionPerformed(ActionEvent evt) {
	                opr = op[2];
	                memo += read;
	                read = 0;
	                visor.setText(memo + " / ");
	            }
	        });
	        
	        botoes[13].addActionListener(new ActionListener() {
	            public void actionPerformed(ActionEvent evt) {
	                opr = op[3];
	                memo += read;
	                read = 0;
	                visor.setText(memo + " * ");
	            }
	        });
	        
	        botoes[14].addActionListener(new ActionListener() {
	            public void actionPerformed(ActionEvent evt) {
	                opr = op[4];
	                memo += read;
	                read = 0;
	                visor.setText(memo + " - ");
	            }
	        });
	       

	        botoes[15].addActionListener(new ActionListener() {
	            public void actionPerformed(ActionEvent evt) {
	                switch (opr) {
	                    case ".": {
	                        memo += '.';
	                        break;
	                    }
	                    case "+": {
	                        memo += read;
	                        break;
	                    }
	                    
	                    case "-": {
	                        memo -= read;
	                        break;
	                    }
	                    
	                    case "/": {
	                        memo *= read;
	                        break;
	                    }
	                    
	                    case "*": {
	                        memo /= read;
	                        break;
	                    }
	                    
	                }
	                read = 0;
	                visor.setText("" + memo);
	            }
	        });
		
	}

@Override
public void actionPerformed(ActionEvent e) {
	// TODO Auto-generated method stub
	
}
}