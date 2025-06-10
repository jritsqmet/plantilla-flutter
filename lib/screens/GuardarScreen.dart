import 'package:flutter/material.dart';

class Guardar extends StatelessWidget {
  const Guardar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: formulario(),
    );
  }
}

Widget formulario(){
  TextEditingController _cedula = TextEditingController();
  TextEditingController _nombre = TextEditingController();
  TextEditingController _edad = TextEditingController();


  return(
    Column(children: [
      TextField(controller: _cedula,),
      TextField(controller: _nombre,),
      TextField(controller: _edad,),

      FilledButton(onPressed: ()=> guardardatos(_cedula.text, _nombre.text, _edad.text), child: Text("Guardar"))
    ],)
    

  );
}

Future<void> guardardatos(cedula, nombre, edad) async {
  
}