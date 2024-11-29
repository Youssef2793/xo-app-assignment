import 'package:flutter/material.dart';
import 'package:ox_app/homescreen.dart';
import 'package:ox_app/player_data.dart';

class PlayersName extends StatefulWidget {
  static const String routname='playersname';

  @override
  State<PlayersName> createState() => _PlayersNameState();
}

class _PlayersNameState extends State<PlayersName> {
  String player1name='';

  String player2name='';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: Text('Select players name',style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                     ),),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  player1name=value;
                  print(player1name);
                },
                decoration: InputDecoration(
                  hintText: "enter player 1 name",
                ),
              ),
              TextField(
                onChanged: (value) {
                  player2name=value;
                  print(player1name);
                },
                decoration: InputDecoration(
                  hintText: "enter player 2 name",
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: (){
          Navigator.pushNamed(context, HomeScreen.routname,
          arguments: PlayerData(playername1: player1name, playername2: player2name),
          ); 
                },
                 child: Text("Go to play")),
            ],
          ),
        ),
      ),
    );
  }
}