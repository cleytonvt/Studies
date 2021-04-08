
public class TelaLogin {    
    public static void main(String[]args){
        Application.launch(args);
    }
    
    public void init(){

    }

    public void start(Stage stage) throws Exception{
        Button botao = new Button("Cadastrar");
        Scene cena = new Scene(botao);
        stage.setSnece(scene);
        stage.show();
    }

    public void stop(){

    }
}
