import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartwaste/mapa_page.dart';

/*class Login extends StatelessWidget{
  @override
  Widget build(BuildContextcontext) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Login"),
        body: Container(
          color: Colors.green,
          child: widget.Image(),
        )
      )
    )
  }
}*/

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    final cpfField = TextField(
      obscureText: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "CPF",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)))
    );

    final senhaField = TextField(
        obscureText: true,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Senha",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)))
    );

    final buttonLogin = ButtonTheme(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        child: ElevatedButton(
          //color: Color(0xff01A0C7),
          child: Text("Entrar", textAlign: TextAlign.center,
                 style: style.copyWith(
                 color: Colors.white,
                 fontWeight: FontWeight.bold)),
            onPressed: () {
              //ir para a segunda tela ao pressionar o botão
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MapaPage()),
              );
            },
            //shape: RoundedRectangleBorder(
              //borderRadius: BorderRadius.circular(30.0)
            //)
        )
    );

    return Scaffold(body: Center(
      child: SingleChildScrollView(
      child: Container(
        color: Colors.green,
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 450.0,
            child: Image.asset("imagens/img.png", fit: BoxFit.contain),
            ),
            SizedBox(height: 40.0), cpfField,
            SizedBox(height: 20.0), senhaField,
            SizedBox(height: 30.0), buttonLogin,
          ]
        )
      ),
      )
    ),
    );
  }
}

