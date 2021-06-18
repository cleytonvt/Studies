package com.TecnicasDeProgramacao.Projeto;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.ConfigurableApplicationContext;

import com.TecnicasDeProgramacao.Projeto.Controller.MyController;

import javafx.application.Application;
import javafx.application.Platform;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;
import net.rgielen.fxweaver.core.FxWeaver;

public class JavaFxApplication extends Application{

    private ConfigurableApplicationContext applicationContext;

    @Override
    public void init() {
        String[] args = getParameters().getRaw().toArray(new String[0]);

        this.setApplicationContext(new SpringApplicationBuilder()
                .sources(ProjetoApplication.class)
                .run(args));
    }

	public ConfigurableApplicationContext getApplicationContext() {
		return applicationContext;
	}

	public void setApplicationContext(ConfigurableApplicationContext applicationContext) {
		this.applicationContext = applicationContext;
	}
	
	@Override
	public void stop() {
	    this.applicationContext.close();
	    Platform.exit();
	}

	@Override
	public void start(Stage stage) throws Exception {
		FxWeaver fxWeaver = applicationContext.getBean(FxWeaver.class);
	    Parent root = fxWeaver.loadView(MyController.class);
	    Scene scene = new Scene(root);
	    stage.setScene(scene);
	    stage.show();
		
	}
}
