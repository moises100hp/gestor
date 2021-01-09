import 'package:flutter/material.dart';
import 'package:pedidodeliveryapp/screens/Home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final login = TextEditingController();
  final senha = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Color corFundo = Color(0xFFdbc9f2);
  Color corBase = Color(0xFF662d91);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // backgroundColor: corFundo,
      body: SingleChildScrollView(
        //padding: EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.33,
                child: Image.asset('assets/pdvflowfundoroxo.png',
                  alignment: Alignment.center
                  ,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80)
                  ),
                  color: corBase
                  // gradient: LinearGradient(
                  //   colors: [
                  //     Colors.deepPurple,
                  //    // corFundo
                  //   ]
                  )
                //),
              ),

              SizedBox(height: 100),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text('E-mail',
                        style: TextStyle(
                            color: Colors.deepPurple,
                            //Theme.of(context).primaryColor,
                            fontSize: 19.0, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Container(
                height: 39,
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextFormField(
                    cursorColor: corBase,
                    controller: null,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (text) {
                      if (text.isEmpty ||
                          !text.contains("@") ||
                          !text.contains(".com")) return "E-mail inválido";
                    }),
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text('Senha',
                        style: TextStyle(
                            color: corBase,
                            fontSize: 19.0, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Container(
                height: 39,
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                  ),
                  controller: null,
                  obscureText: true,
                  validator: (text) {
                    if (text.isEmpty) return "Senha inválida";
                  },
                ),
              ),
              SizedBox(height: 50),
                  FlatButton(
                    minWidth: 350,
                    color: corBase,
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20.0)),
                    child: Text("Entrar",
                        style: TextStyle(fontSize: 18.0, color: Colors.white)),
                    onPressed: (){
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                //  ),
               // ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
