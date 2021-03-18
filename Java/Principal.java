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
private String[] op = {"", ".", "=", "+", "/", "*", "-"}; 
private int[] posX = {5,75,145,215}; 
private int[] posY = {5,55,125,195,265};   
private int larg = 65;
private int alt = 65;
private int i, j = 0, k= 0, l = 0, m = 0, n = 1, o = 4, w = 0;
int read = 0;

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
	

	/*
	Trecho do código que cria, posiciona e acidiona os botões no frame,
	utilizado laço de repetição para os números e os botões de operação
	*/
	
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

			else if (i >= 10 && i <=12){
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
			}
		}
		
		for(w = 1; w < 10 ; w++){
			
				botoes[w].addActionListener(new ActionListener() {
					public void actionPerformed(ActionEvent e) {
						/*read *= 10;*/
						read = w;
						visor.setText(visor.getText() + String.valueOf(w));
					}
				});
		}
	}

@Override
public void actionPerformed(ActionEvent e) {
	// TODO Auto-generated method stub
	
}
}