class Filme {
  int? id;
  String? titulo;
  String? genero;
  String? idade;
  String? duracao;
  double? pontos;
  String? descricao;
  String? ano;
  String? imageUrl;

  Filme(this.titulo,this.genero,this.idade,this.duracao,this.pontos,this.descricao,this.ano,this.imageUrl,{this.id});

  @override
  String toString() {
    return 'Filme{id: $id, title: $titulo, genero: $genero, idade: $idade, duracao: $duracao, pontos: $pontos, descricao: $descricao, ano: $ano}';
  }
}
