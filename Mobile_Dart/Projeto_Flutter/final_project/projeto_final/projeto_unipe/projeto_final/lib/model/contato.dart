class Contato{

  int? id;
  String? nome;
  String? email;
  String? urlImage;

  Contato(this.nome, this.email, this.urlImage, {this.id});

  @override
  String toString() {
    return 'Contato{id: $id, nome: $nome, email: $email}';
  }
}