import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      drawer: Dra(),
      appBar: AppBar(
        elevation: 12,
        title: Title(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.home)],
                )
              ],
            )),
      ),
      body: Corpo(),
    );
  }
}

class Dra extends StatelessWidget {
  const Dra({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 0,
                color: Colors.red,
                height: 150,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        children: [
                          Icon(
                            Icons.person,
                            size: 60,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [Text("Abel kamulingue")],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [Text("18 anos")],
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.home),
                      SizedBox(width: 5),
                      Text("Retroceder")
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Corpo extends StatelessWidget {
  const Corpo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [   
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: ClipOval(
                    child: Image.asset("imgs/bma2.png")),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            entrada(icone: Icon(Icons.person), texto: 'insira o seu email',),
            SizedBox(
              height:16
            ),
            entrada(icone: Icon(Icons.password), texto: 'insira a sua palavra passe',),
            SizedBox(
              height:16
            ),

            
            Container(
              width: MediaQuery.of(context).size.width -16,

              height: 60, 
              child: ElevatedButton(onPressed: (){},
              
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                primary: Colors.green,
              ),
               child: Text("Logar")
               
               )
               
               )






          ],
        ),
      ),
    );
  }
}

class entrada extends StatelessWidget {

  final String texto;
  final Icon icone;
  const entrada({
    Key? key,  required this.texto, required this.icone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width -0,
      height: 60,
      color: Colors.grey.shade300,

      child: TextFormField(
        maxLines: 20,
        decoration: InputDecoration(
          
          border: InputBorder.none,
          hintText: texto,
          prefixIcon: icone,
        ) ,
      ),
    );
  }
}
