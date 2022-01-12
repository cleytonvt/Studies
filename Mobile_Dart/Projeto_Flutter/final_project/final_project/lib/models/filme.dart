class Filme {
  int? id;
  String? imageUrl;
  String? title;
  //String? genre;
  //String? ageRange;
  //String? duraction;
  //double? score;
  //String? description;
  //String? year;

  Filme(this.imageUrl, this.title, {this.id});

  @override
  String toString() {
    return 'Filme{id: $id, imageUrl: $imageUrl, title: $title';
  }
}
