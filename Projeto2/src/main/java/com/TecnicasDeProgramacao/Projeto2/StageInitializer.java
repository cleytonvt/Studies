package com.TecnicasDeProgramacao.Projeto2;

import java.io.IOException;

import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;

import com.TecnicasDeProgramacao.Projeto2.JavaFxApplication.StageReadyEvent;
import com.TecnicasDeProgramacao.Projeto2.Controllers.LoginController;

import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

@Component
public class StageInitializer implements ApplicationListener<StageReadyEvent> {
    
    static Scene loginScene;
    static Scene cadastroScene;
    
          
    public void onApplicationEvent(StageReadyEvent event) {
    	
    	try {
                                   
        	Parent fxmlLogin = FXMLLoader.load(getClass().getResource("/com/TecnicasDeProgramacao/Projeto2/Views/login.fxml"));
        	loginScene = new Scene(fxmlLogin,600,350);
        	
        	Parent fxmlCadastro = FXMLLoader.load(getClass().getResource("/com/TecnicasDeProgramacao/Projeto2/Views/cadastro.fxml"));
        	cadastroScene = new Scene(fxmlCadastro,600,350);
        	
            Stage stage = event.getStage();
            stage.setTitle("Projeto - Tela de Login");
            
            if (LoginController.telaAtual().equals("login")){
            	stage.setScene(loginScene);
            }
            
                    
            
            stage.show();
            
        } catch (IOException e) {
            throw new RuntimeException();
        }
    }
    
}