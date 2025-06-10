import 'package:app_supa/auth/LoginScreen.dart';
import 'package:app_supa/auth/RegistroScreen.dart';
import 'package:flutter/material.dart';

void main() async {  
  runApp(const supaApp());
}

class supaApp extends StatelessWidget {
  const supaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:  Cuerpo()
      
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SUPABASE"),),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://4kwallpapers.com/images/walls/thumbs_3t/1679.jpg"), 
            fit: BoxFit.cover )
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              btnLogin(context),
              btnRegistro(context)
          ],),
        ),
      ),
    );
  }
}

Widget btnLogin(BuildContext context) {
  return ElevatedButton(
    onPressed: () => Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => Login())
    ),
    child: Text("Ir a Login"),
  );
}

Widget btnRegistro(context){
  return (
    ElevatedButton(
      onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder:(context) => Registro(),)), 
      child: Text("Ir a Registro"))
  );

}

