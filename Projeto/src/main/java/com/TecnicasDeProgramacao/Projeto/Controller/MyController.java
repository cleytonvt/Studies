package com.TecnicasDeProgramacao.Projeto.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.TecnicasDeProgramacao.Projeto.Services.WeatherService;

import net.rgielen.fxweaver.core.FxmlView;

@Component
@FxmlView("login.fxml")
public class MyController {

	private WeatherService weatherService;
	
	@Autowired
	public MyController(WeatherService weatherService) {
		this.weatherService = weatherService;
	}
}
