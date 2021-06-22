package com.TecnicasDeProgramacao.Projeto2.Controllers;

import java.util.ResourceBundle;

import javax.print.DocFlavor.URL;

import org.springframework.stereotype.Component;

import com.TecnicasDeProgramacao.Projeto2.StageInitializer;
import com.TecnicasDeProgramacao.Projeto2.Model.User;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.TextField;

@Component
public class RegisterController {
	

	@FXML
	private TextField lbNome;
	
	@FXML
	private TextField lbUsuario;
	
	@FXML
	private TextField lbEmail;
	
	@FXML
	private TextField lbSenha;
		
	
	User user;	
	
	public void initialize(URL url, ResourceBundle rb) {
		
	}
	
	@FXML
    public void btVoltar(ActionEvent e) {
		StageInitializer.changeScreen("login");
	}
	
	@FXML
    public void btInsert(ActionEvent e) {
		salvar();
		StageInitializer.changeScreen("login");
	}
	
	public void salvar() {
		user.setNome(lbNome.getText());
		user.setUsuario(lbUsuario.getText());
		user.setEmail(lbEmail.getText());
		user.setSenha(lbSenha.getText());
				
	}
	
	
}
