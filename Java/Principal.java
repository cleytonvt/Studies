import java.awt.Component;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JTextField;

public class Principal implements ActionListener{

JButton ponto;
JButton div;
JButton mult;
JButton subt;
JButton adic;
JButton igual;
JButton[] numeros = new JButton[10];
JTextField visor;
static JFrame frame;
int memo = 0;
int read = 0;
char op; 
   
public static void main(String[] args) {
	// TODO Auto-generated method stub
	Principal app = new Principal();
	app.go();
	frame.setVisible(true); //setar se o frame será visivel ou não
}
	
private void go() {
	// TODO Auto-generated method stub
	frame = new JFrame();
	frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); //finalizar aplicacao ao fechar programa
	frame.setSize(300,375); //setar tamanho do fram (largura,altura)
	frame.getContentPane().setLayout(null); //layout do conteudo do frame
	frame.setResizable(false); //setar se o frame sera expansivel ou nao
	frame.setTitle("Calculadora"); //titulo do programa
		
	/*primeira linha do frame*/		
	visor = new JTextField();
	visor.setEnabled(false);
    	//posicionamento (distancia da esquerda,distancia do topo, largura, altura)
	visor.setBounds(5, 5, 275, 45); 
    	frame.add(visor);
	
	/*segunda linha do frame*/
	numeros[7] = new JButton("7");
	numeros[7].setBounds(5, 55, 65, 65);
	frame.add(numeros[7]);
        
	numeros[8] = new JButton("8");
	numeros[8].setBounds(75, 55, 65, 65);
	frame.add(numeros[8]);
        
	numeros[9] = new JButton("9");
	numeros[9].setBounds(145, 55, 65, 65);
	frame.add(numeros[9]);
        
	div = new JButton("/");
	div.setBounds(215, 55, 65, 65);
	frame.add(div);
		
	/*terceira linha do frame*/
	numeros[4] = new JButton("4");
	numeros[4].setBounds(5, 125, 65, 65);
	frame.add(numeros[4]);
	      
	numeros[5] = new JButton("5");
	numeros[5].setBounds(75, 125, 65, 65);
	frame.add(numeros[5]);
	        
	numeros[6] = new JButton("6");
	numeros[6].setBounds(145, 125, 65, 65);
	frame.add(numeros[6]);
	    
	mult = new JButton("*");
	mult.setBounds(215, 125, 65, 65);
	frame.add(mult);

	/*quarta linha do frame*/    	
	numeros[1] = new JButton("1");
	numeros[1].setName("1");
	numeros[1].setBounds(5, 195, 65, 65);
	frame.add(numeros[1]);
        
	numeros[2] = new JButton("2");
	numeros[2].setBounds(75, 195, 65, 65);
	frame.add(numeros[2]);
        
	numeros[3] = new JButton("3");
	numeros[3].setBounds(145, 195, 65, 65);
	frame.add(numeros[3]);
       
	subt = new JButton("-");
	subt.setBounds(215, 195, 65, 65);
	frame.add(subt);
		
	/*quinta linha do frame*/
	numeros[0] = new JButton("0");
	numeros[0].setBounds(5, 265, 65, 65);
	frame.add(numeros[0]);
		
	adic = new JButton("+");
	adic.setBounds(75, 265, 65, 65);
	frame.add(adic);
		
	igual = new JButton("=");
	igual.setBounds(145, 265, 65, 65);
	frame.add(igual);
		
	ponto = new JButton(".");
	ponto.setBounds(215, 265, 65, 65);
	frame.add(ponto);
			
	
	numeros[0].addActionListener(new ActionListener() {
		public void actionPerformed(ActionEvent e) {
			// TODO Auto-generated method stub
			read +=0;
			visor.setText(visor.getText()+"0");
			}
		});
		
	}

}
