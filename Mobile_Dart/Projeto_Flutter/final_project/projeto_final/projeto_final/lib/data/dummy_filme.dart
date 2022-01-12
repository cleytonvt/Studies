import 'package:projeto_final/models/filme.dart';

// ignore: non_constant_identifier_names
Map<String, Filme> DUMMY_FILMES = {
  '1': Filme(
      id: '1',
      imageUrl:
          'https://br.web.img3.acsta.net/pictures/21/04/14/19/06/3385237.jpg',
      title: "Velozes e furiosos 9",
      genre: "Ação",
      ageRange: '16',
      duraction: '2:30',
      score: 4.5,
      description: 'Filme de ação',
      year: '2017'),
  '2': Filme(
      id: '2',
      imageUrl:
          'https://i.pinimg.com/736x/27/ae/a1/27aea13d7669706e753ac506a70cdcc4.jpg',
      title: "Velozes e furiosos 8",
      genre: "Ação",
      ageRange: '16',
      duraction: '2:20',
      score: 4.0,
      description: 'Filme de ação',
      year: '2016'),
};
