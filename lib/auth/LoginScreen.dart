import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SUPABASE"),),

      body: formularioLogin(),
    );
  }
}

Widget formularioLogin(){
  TextEditingController _correo = TextEditingController();
  TextEditingController _contrasenia = TextEditingController();

  return Center(
    child: (
      
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        Text("LOGIN", style: TextStyle(fontSize: 40),),
        TextField(controller: _correo,  decoration: InputDecoration( border: OutlineInputBorder(), label: Text("Correo"), ),),
        Container(height: 10,),
        TextField(controller: _contrasenia, decoration: InputDecoration( border: OutlineInputBorder(), label: Text("Contrasenia"), )),
    
        ElevatedButton(onPressed: ()=> login(), child: Text("Login"))
      ],)
    
    ),
  );

}

void login(){
  
}