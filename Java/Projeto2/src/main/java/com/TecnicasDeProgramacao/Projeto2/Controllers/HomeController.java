package com.TecnicasDeProgramacao.Projeto2.Controllers;

import org.springframework.stereotype.Component;

import com.TecnicasDeProgramacao.Projeto2.StageInitializer;
import com.TecnicasDeProgramacao.Projeto2.Model.User;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.ListView;

@Component
public class HomeController {
	
	@FXML
	protected ListView<User> lvUsuarios;
	
	@FXML
	protected void initialize() {
		updateList();
	}
	
	@FXML
    public void btSair(ActionEvent e) {
		StageInitializer.changeScreen("login");
	}
	
	private void updateList() {
		
	}
}
