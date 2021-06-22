package com.TecnicasDeProgramacao.Projeto2;

import java.io.IOException;

import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;

import com.TecnicasDeProgramacao.Projeto2.JavaFxApplication.StageReadyEvent;

import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

@Component
public class StageInitializer implements ApplicationListener<StageReadyEvent> {
    
	private static Stage stage;
    private static Scene loginScene;
    private static Scene cadastroScene;
    private static Scene homeScene;
      
          
    public void onApplicationEvent(StageReadyEvent event) {
    	
    	stage = event.getStage();
    	
    	                                 
        Parent fxmlLogin,fxmlCadastro,fxmlHome;
		try {
			fxmlLogin = FXMLLoader.load(getClass().getResource("/com/TecnicasDeProgramacao/Projeto2/Views/login.fxml"));
			loginScene = new Scene(fxmlLogin,600,350);
			
			fxmlCadastro = FXMLLoader.load(getClass().getResource("/com/TecnicasDeProgramacao/Projeto2/Views/cadastro.fxml"));
			cadastroScene = new Scene(fxmlCadastro,600,350);
			
			fxmlHome = FXMLLoader.load(getClass().getResource("/com/TecnicasDeProgramacao/Projeto2/Views/home.fxml"));
			homeScene = new Scene(fxmlHome,600,350);
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
        	
        stage.setTitle("Projeto - Tela de Login");
        stage.setScene(loginScene);
        stage.show();
            
        
    }
    
    public static void changeScreen(String scr) {
    	switch (scr) {
    	case "login":
    		stage.setScene(loginScene);
    		break;
    	case "cadastro":
    		stage.setScene(cadastroScene);
    		break;
    	case "home":
    		stage.setScene(homeScene);
    		break;
    	}
    }
    
}