import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String user = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (text){
                user = text;
              },
              decoration: InputDecoration(
                labelText: 'Usuario'
              ),
            ),

            TextField(
              onChanged: (text){
                password = text;
              },
              decoration: InputDecoration(
                labelText: 'Contraseña'
              ),
              obscureText: true,
            ),

            new RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text(
                      "Acceder",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    
            onPressed: () {
              // Aqui va la ccion que hara el boton
            }),
          ],
        ),
        
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
      
    );
  }
}
