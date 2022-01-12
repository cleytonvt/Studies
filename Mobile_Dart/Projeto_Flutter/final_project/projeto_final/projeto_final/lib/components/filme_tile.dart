import 'package:flutter/material.dart';
import 'package:projeto_final/models/filme.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FilmeTile extends StatelessWidget {
  final Filme filme;

  // ignore: use_key_in_widget_constructors
  const FilmeTile(this.filme);

  @override
  Widget build(BuildContext context) {
    final image = filme.imageUrl == null || filme.imageUrl.isEmpty
        ? "https://ringostrack.com/storage/covers/imagenotfound.png"
        : filme.imageUrl;
    return SizedBox(
        height: 160,
        child: GestureDetector(
          //Define ação quando utilizado unico toque em tela
          onTap: () {
            showDialog(
                context: context,
                builder: (context) => Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Text(
                                    "Exibir"); //ExibirFilme(filmes[index]);
                              }));
                            },
                            child: const Text("Detalhes")),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Text(
                                  "Alterar"); //AlterarFilme(filmes[index]);
                            }));
                          },
                          child: const Text("Alterar"),
                        ),
                      ],
                    ));
          },

          //definindo ação para arrasto e itens mostrados na tela

          child: Card(
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Row(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Image.network(
                          image,
                          fit: BoxFit.fill,
                          width: 100,
                          height: 150,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              filme.title,
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 6.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              filme.genre,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 6.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              filme.duraction,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 33.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SmoothStarRating(
                              starCount: 5,
                              isReadOnly: true,
                              spacing: 0.0,
                              rating: filme.score,
                              defaultIconData: Icons.star_border,
                              onRated: (v) {},
                              color: Colors.yellow,
                              borderColor: Colors.yellow,
                              size: 25.0,
                              filledIconData: Icons.star,
                              halfFilledIconData: Icons.star_half,
                              allowHalfRating: false,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
