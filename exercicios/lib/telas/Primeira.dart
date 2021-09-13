import 'package:exercicios/telas/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Primeira extends StatelessWidget {
  const Primeira({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Dra() ,
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

      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
        return   
        
        Container(
          width: MediaQuery.of(context).size.width -0,
          height: MediaQuery.of(context).size.height -0,
          child: Corpo());
       },
      ),
    );
  }
}
