package com.TecnicasDeProgramacao.Projeto2.Controllers;

import org.springframework.stereotype.Component;

import com.TecnicasDeProgramacao.Projeto2.StageInitializer;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;


@Component
public class LoginController {
	
	@FXML
    public void btCadastrar(ActionEvent e) {
		StageInitializer.changeScreen("cadastro");
	}
	
	@FXML
    public void btEntrar(ActionEvent e) {
		StageInitializer.changeScreen("home");
	}
	
}
