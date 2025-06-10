import 'package:flutter/material.dart';

class Registro extends StatelessWidget {
  const Registro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SUPABASE"),),

      body: formularioRegistro(),
    );
  }
}

Widget formularioRegistro(){
  TextEditingController _correo = TextEditingController();
  TextEditingController _contrasenia = TextEditingController();

  return Center(
    child: (
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        TextField(controller: _correo, decoration: InputDecoration( border: OutlineInputBorder(), label: Text("Correo"), )),
        Container(height: 10,),
        TextField(controller: _contrasenia, decoration: InputDecoration( border: OutlineInputBorder(), label: Text("Contraseña"), )),
    
        ElevatedButton(onPressed: ()=> registrarse(), child: Text("Registro"))
      ],)
    
    ),
  );

}

void registrarse(){

}