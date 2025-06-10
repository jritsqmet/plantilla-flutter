import 'package:flutter/material.dart';

class Leer extends StatelessWidget {
  const Leer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: lista(),
    );
  }
}

Future <List> leerSupabase() async {
  List lista = [{"titulo": 'Matrix', "genero":"acción" }, {"titulo": 'Titanic', "genero":"drama" }];
  
  return lista ;
}


Widget lista(){
return FutureBuilder(future: leerSupabase(), builder:(context, snapshot) {
  if( snapshot.hasData){
    final data = snapshot.data!;

    return ListView.builder(itemCount: data.length, itemBuilder:(context, index) {
      final item = data[index];

      return ListTile(
        title: Text(item['titulo']),
      );

    },);

  }else{
    return Text("No hay data");
  }
},);
}