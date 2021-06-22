package com.TecnicasDeProgramacao.Projeto2.Controllers;

import org.springframework.stereotype.Component;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;


@Component
public class LoginController {
	
	@FXML
    public void btCadastrar(ActionEvent e) {
		telaAtual("login");	
	}
	
	public String telaAtual (String tela) {
		String telaAt = tela;
		return telaAt;
	}
}
