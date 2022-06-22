// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Meu primeiro app')
          ),
         body: Column(
             children :<Widget>[
/* Image */
               Image(image: AssetImage('assets/muro.jpg')),
/* Local and Rating */               
               Container(
                 padding: EdgeInsets.all(25),
                 child: Row(children: [
                   Expanded(
                     
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                           Text('Kotel',
                           textAlign: TextAlign.left,
                           style: TextStyle(
                             color: Colors.black,
                             fontSize: 19,
                             fontWeight: FontWeight.bold,
                           ),),
                           Text('Jerusalem, Israel',
                           style: TextStyle(
                             color: Colors.grey,
                             fontSize: 15 
                           ),
                           )
                         ],
                       )

                        ),
                      Row(
                         children: [
                           Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.blue,
                            ),
                            Text('3.891',
                            style: TextStyle(
                              fontSize: 20
                            ),)
                         ],
                       ),
                           
                 ],)
               ),
/*Buttons*/               
               Container(
                 child: Row(children: [Call(),Place(),Share(),],
                 )
               ),
/*Description*/               
               Container(
                 child: Row(
                   children: [
                     Expanded(child: Container(
                       child: Padding(
                         padding: 
                         EdgeInsets.all(25.0),
                          child: Center(child: Text(
                              'O Muro das Lamentações ou Muro Ocidental é o segundo local mais sagrado do judaísmo, atrás somente do Santo dos Santos, no monte do Templo. Trata-se do único vestígio do antigo Templo de Herodes, erguido por Herodes, o Grande no lugar do Templo de Jerusalém inicial.'
                       ),),),
                       height: 150,
                     ))
                   ],
                 )
               )
            ],
        ),
      )
    );
  }
}  

class Call extends StatelessWidget {
   
  @override
  Widget build(BuildContext context){
    return Expanded(
                     child: Container(
                       height: 60,
                       child: Padding(
                         padding: EdgeInsets.all(4.0),
                         child: Column(
                           children: [
                             FlatButton(onPressed: (){} , child: Column(children:[
                               Icon(Icons.call,
                               size: 20,
                               color: Colors.blue,),
                               Text('Ligar')
                               ],
                             ))],
                         ), 
                       )
                       ));
  }
}
class Place extends StatelessWidget {
   
  @override
  Widget build(BuildContext context){
    return Expanded(
                     child: Container(
                       height: 60,
                       child: Padding(
                         padding: EdgeInsets.all(4.0),
                         child: Column(
                           children: [
                             FlatButton(onPressed: (){} , child: Column(children:[
                               Icon(Icons.location_on,
                               size: 20,
                               color: Colors.blue,),
                               Text('Endereço')],
                               )
                               )],
                               ),
                               )
                               ),
                               );
  }
}

class Share extends StatelessWidget {
   
  @override
  Widget build(BuildContext context){
    return Expanded(
                     child: Container(
                       height: 60,
                       child: Padding(
                         padding: EdgeInsets.all(4.0),
                         child: Column(
                           children: [
                             FlatButton(onPressed: (){} , child: Column(children:[
                               Icon(Icons.share,
                               size: 20,
                               color: Colors.blue,),
                               Text('Compartilhar')
                               ],
                             ))],
                         ), 
                       )
                        ),);
  }
}