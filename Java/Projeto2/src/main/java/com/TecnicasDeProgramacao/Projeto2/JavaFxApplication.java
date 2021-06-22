package com.TecnicasDeProgramacao.Projeto2;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.ApplicationEvent;
import org.springframework.context.ConfigurableApplicationContext;

import javafx.application.Application;
import javafx.application.Platform;

import javafx.stage.Stage;

public class JavaFxApplication extends Application {

	private ConfigurableApplicationContext applicationContext;

	
	@Override
	public void init() {
		// TODO Auto-generated method stub
		applicationContext = new SpringApplicationBuilder(Projeto2Application.class).run();
	}
	
	
	@Override
	public void start(Stage stage) {
		// TODO Auto-generated method stub
		applicationContext.publishEvent(new StageReadyEvent(stage));
	}

	
	@Override
	public void stop() {
		// TODO Auto-generated method stub
		applicationContext.close();
		Platform.exit();
	}
	
	static class StageReadyEvent extends ApplicationEvent {
		
		private static final long serialVersionUID = 1L;

		public StageReadyEvent(Stage stage) {
			super(stage);
		}

		public Stage getStage() {
			// TODO Auto-generated method stub
			return ((Stage) getSource());
		}

	}	

}
