import 'package:flutter/material.dart';
import 'package:projeto_final/dao/contato_dao.dart';
import 'package:projeto_final/model/contato.dart';

class ListContacts extends StatefulWidget {
  const ListContacts({Key? key}) : super(key: key);

  @override
  _ListContactsState createState() => _ListContactsState();
}

class _ListContactsState extends State<ListContacts> {
  ContatoDao _contatoDao = ContatoDao();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Listando Contatos"),
        ),
        drawer: Drawer(
            child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("A"),
              accountEmail: Text("A@email.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.iconscout.com/icon/free/png-256/contact-1835759-1558322.png"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Configurações"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Configurações");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Configurações"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Configurações");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Configurações"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Configurações");
                Navigator.pop(context);
              },
            )
          ],
        )),
        body: FutureBuilder(
          future:
              Future.delayed(Duration(seconds: 3), () => _contatoDao.findAll()),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                // TODO: Handle this case.
                break;
              case ConnectionState.waiting:
                return Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [CircularProgressIndicator(), Text("Loading...")],
                ));
                break;
              case ConnectionState.active:
                // TODO: Handle this case.
                break;
              case ConnectionState.done:
                List<Contato> lista_contatos = snapshot.data as List<Contato>;
                return Container(
                  child: ListView.builder(
                      itemCount: lista_contatos.length,
                      itemBuilder: (context, index) {
                        return Dismissible(
                          key: Key("${lista_contatos[index].id}"),
                          background: Container(
                            color: Colors.red,
                            child: Align(
                              alignment: Alignment(-0.9, 0),
                              child: Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          direction: DismissDirection.startToEnd,
                          onDismissed: (direction) {
                            int? id = lista_contatos[index].id;
                            if (id != null) {
                              _contatoDao
                                  .delete(id)
                                  .then((value) => print("Elemento Deletado"));
                            }
                          },
                          child: ListTile(
                            leading: Image.network(
                                "${lista_contatos[index].urlImage}"),
                            title: Text("${lista_contatos[index].nome}"),
                            subtitle: Text("${lista_contatos[index].email}"),
                          ),
                        );
                      }),
                );
                break;
            }

            return Text("Error");
          },
        ));
  }
}
