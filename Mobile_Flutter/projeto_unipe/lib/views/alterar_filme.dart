import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:projeto_unipe/dao/filmes_dao.dart';
import 'package:flutter/material.dart';
import 'package:projeto_unipe/models/filme.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class AlterarFilme extends StatefulWidget {
  final Filme filmes;

  const AlterarFilme(this.filmes);

  @override
  _AlterarFilmeState createState() => _AlterarFilmeState();
}

class _AlterarFilmeState extends State<AlterarFilme> {
  final _key = GlobalKey<FormState>();

  String _ageSelected = "";
  double edtPontos = 0.0;
  int? idEdit = 0;
  TextEditingController edtImagem = TextEditingController();
  TextEditingController edtTitulo = TextEditingController();
  TextEditingController edtGenero = TextEditingController();
  TextEditingController edtDuracao = TextEditingController();
  TextEditingController edtDescricao = TextEditingController();
  TextEditingController edtAno = TextEditingController();
  var maskDuracao = MaskTextInputFormatter(mask: "##:##");

  @override
  Widget build(BuildContext context) {
    idEdit = widget.filmes.id;
    edtImagem = TextEditingController(text: "${widget.filmes.imageUrl}");
    edtTitulo = TextEditingController(text: "${widget.filmes.titulo}");
    edtGenero = TextEditingController(text: "${widget.filmes.genero}");
    edtDuracao = TextEditingController(text: "${widget.filmes.duracao}");
    edtDescricao = TextEditingController(text: "${widget.filmes.descricao}");
    edtAno = TextEditingController(text: "${widget.filmes.ano}");
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text("Alterar Filme"),
    );
  }

  _buildBody() {
    return SingleChildScrollView(
        child: Container(
      margin: const EdgeInsets.all(8.0),
      child: Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              controller: edtImagem,
              decoration: const InputDecoration(
                labelText: "Url Imagem",
              ),
              validator: (value) {
                if (value != null) {
                  if (value.isEmpty) {
                    return "Anexe a URL da capa do filme";
                  }
                  return null;
                }
              },
            ),
            TextFormField(
              controller: edtTitulo,
              decoration: const InputDecoration(
                labelText: "Título",
              ),
              validator: (value) {
                if (value != null) {
                  if (value.isEmpty) {
                    return "Informe um titulo";
                  }
                  return null;
                }
              },
            ),
            TextFormField(
              controller: edtGenero,
              decoration: const InputDecoration(
                labelText: "Gênero",
              ),
              validator: (value) {
                if (value != null) {
                  if (value.isEmpty) {
                    return "Informe o genero do filme";
                  }
                  return null;
                }
              },
            ),
            Row(
              children: <Widget>[
                const Text(
                  'Faixa Etária:  ',
                  style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                ),
                DropdownButton<String>(
                  // ignore: unnecessary_null_comparison
                  value: "${widget.filmes.idade}",
                  iconSize: 30.0,
                  items: ['Livre', '10', '12', '14', '16', '18'].map(
                    (val) {
                      return DropdownMenuItem<String>(
                        value: val,
                        child: Text(val),
                      );
                    },
                  ).toList(),
                  onChanged: (val) {
                    _ageSelected = val!;
                  },
                ),
              ],
            ),
            TextFormField(
              controller: edtDuracao,
              decoration: const InputDecoration(
                labelText: "Duração",
                hintText: "00:00",
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [maskDuracao],
              validator: (value) {
                if (value != null) {
                  if (value.isEmpty) {
                    return "Informe a duração do filme";
                  }
                  return null;
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: <Widget>[
                  const Text(
                    'Nota: ',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 16),
                  ),
                  SmoothStarRating(
                    size: 40.0,
                    rating: widget.filmes.pontos,
                    color: Colors.blue,
                    onRated: (value) {
                      edtPontos = value;
                    },
                  ),
                ],
              ),
            ),
            TextFormField(
              controller: edtAno,
              decoration: const InputDecoration(
                labelText: "Ano: ",
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value != null) {
                  if (value.isEmpty) {
                    return "Informe o ano do filme";
                  }
                  return null;
                }
              },
            ),
            TextFormField(
              controller: edtDescricao,
              maxLines: 6,
              decoration: const InputDecoration(
                labelText: "Descrição",
              ),
              validator: (value) {
                if (value != null) {
                  if (value.isEmpty) {
                    return "Digite a sinopse do filme";
                  }
                  return null;
                }
              },
            ),
          ],
        ),
      ),
    ));
  }

  _buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        FormState? formState = _key.currentState;
        if(formState != null) {
          if (!formState.validate()) {
            return;
          }
        }

        FilmeDao filmeDao = FilmeDao();
        filmeDao
            .update(Filme(
                edtTitulo.text,
                edtGenero.text,
                _ageSelected,
                edtDuracao.text,
                edtPontos,
                edtDescricao.text,
                edtAno.text,
                edtImagem.text,id: idEdit))
            .then((id) {
          print("Filme Alterado id: $id");
        });

        Navigator.pop(context, filmeDao);
      },
      child: const Icon(Icons.save),
    );
  }
}
