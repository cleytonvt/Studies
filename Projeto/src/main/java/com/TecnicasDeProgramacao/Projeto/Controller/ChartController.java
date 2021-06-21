package com.TecnicasDeProgramacao.Projeto.Controller;

import org.springframework.stereotype.Component;

import javafx.fxml.FXML;
import javafx.scene.chart.LineChart;

@Component
public class ChartController {

	@FXML
	public LineChart<String, Double> chart;
}
