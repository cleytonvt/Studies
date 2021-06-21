package com.TecnicasDeProgramacao.Projeto;

import java.io.IOException;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationListener;

import com.TecnicasDeProgramacao.Projeto.JavaFxApplication.StageReadyEvent;

import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class StageInitializer implements ApplicationListener<StageReadyEvent>{

	@Value("classpath:/chart.fxml")
	private Resource fxmlResource;
	private String applicationTitle;
	private ApplicationContext applicationContext;
	
	@Override
	public void onApplicationEvent(StageReadyEvent event) {
		// TODO Auto-generated method stub
		try {
			FXMLLoader fxmlLoader = new FXMLLoader (fxmlLoader.getURL());
			fxmlLoader.setControllerFactory(aClass -> applicationContext.getBean(aClass));
			Parent parent = fxmlLoader.load();
			Stage stage = event.getStage();
			stage.setScene(new Scene(parent, 800, 600));
			stage.setTitle(applicationTitle);
			stage.show();
		} catch (IOException e) {
			throw new RuntimeException();
		}
		
	}


	public StageInitializer(@Value("Tela de Login")String applicationTitle) {
		super();
		this.applicationTitle = applicationTitle;
	}

}
