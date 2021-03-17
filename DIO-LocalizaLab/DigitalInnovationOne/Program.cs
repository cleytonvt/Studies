using System;

namespace DigitalInnovationOne
{
    class Program
    {
        static void Main(string[] args)
        {
            string opcaoUsuario = Opcoes();
            Aluno[] alunos = new Aluno[5];
            var indiceAluno = 0;

            while (opcaoUsuario.ToUpper() != "X")
            {
                switch(opcaoUsuario)
                {
                    case "1":
                        //TODO: Adicionar aluno
                        Console.WriteLine("Informe o nome do aluno:");
                        var aluno = new Aluno();
                        aluno.Nome = Console.ReadLine();

                        Console.WriteLine("Informe a nota do aluno:");

                        if (decimal.TryParse(Console.ReadLine(), out decimal nota))
                        {
                            aluno.Nota = nota;
                        } 
                        else 
                        {
                            throw new ArgumentOutOfRangeException("Valor da nota deve ser decimal!");
                        }
                        
                        alunos[indiceAluno] = aluno;
                        indiceAluno++;
                        break;

                    case "2":
                        //TODO: Listar alunos
                        foreach (var a in alunos)
                        {
                            if (!string.IsNullOrEmpty(a.Nome))
                            {
                                Console.WriteLine($"ALUNO: {a.Nome} - NOTA: {a.Nota}");
                            }
                            
                        }
                        break;

                    case "3":
                        //TODO: calcular media total
                        break;

                    default:
                        throw new ArgumentOutOfRangeException();
                }

                opcaoUsuario = Opcoes();
            }
        }

        private static string Opcoes()
        {   
            Console.WriteLine();
            Console.WriteLine("Informe a opção desejada: ");
            Console.WriteLine("1. Inserir novo aluno");
            Console.WriteLine("2. Listar alunos");
            Console.WriteLine("3. Calcular média geral");
            Console.WriteLine("X. Sair");
            Console.WriteLine();

            string opcaoUsuario = Console.ReadLine();
            Console.WriteLine();
            return opcaoUsuario;
        }
    }
}
