import 'package:flutter/material.dart';
import 'package:ox_app/player_data.dart';
import 'package:ox_app/widget/boardbutton.dart';

class HomeScreen extends StatefulWidget {
static const String routname='nefuufmw';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
List <String> boardState=[
  '','','',
  '','','',
  '','','',
];

  @override
  Widget build(BuildContext context) {
    PlayerData arg=ModalRoute.of(context)?.settings.arguments as PlayerData;
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('welcome to X-O game',style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${arg.playername1} (x)',style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text("${Player2}",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${arg.playername2} (O)',style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text('${Player2 }',style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),)
                    ],
                  ),
                ],
              ),
            ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                  BoardButton(boardState[0],0,onClickChange),
                  BoardButton(boardState[1],1,onClickChange),
                  BoardButton(boardState[2],2,onClickChange),
            ],
                     ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                  BoardButton(boardState[3],3,onClickChange),
                  BoardButton(boardState[4],4,onClickChange),
                  BoardButton(boardState[5],5,onClickChange),
            ],
                     ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                  BoardButton(boardState[6],6,onClickChange),
                  BoardButton(boardState[7],7,onClickChange),
                  BoardButton(boardState[8],8,onClickChange),
            ],
                     ),
          ),
          ],
        ),
      ),
    );
  }

  int counter=0;
int Player1=0;
int Player2=0;
  void onClickChange(int index){
    if(boardState[index].isNotEmpty){
      return;
    }
    if(counter%2==0){
      boardState[index]='X';
      Player1+=5;
    }else{
      boardState[index]='O';
      Player2++;
    }
    if (winnerCheck('X')){
      Player1+=5;
    }else if(winnerCheck('O')){
Player2+=5;
    }
    counter++;
    setState(() {
      
    });
  }
  bool winnerCheck( String symbol){
    for (int i=0; i<9;i+=3)
    if(boardState[i]==symbol && boardState[i+1]==symbol && boardState[i+2]==symbol){
      return true;
    }
    for (int i=0;i<3;i++){
      if (boardState[i]==symbol&&boardState[i+3]==symbol&&boardState[i+6]==symbol){
        return true;
      }
      if (boardState[0]==symbol&&boardState[4]==symbol&&boardState[8]==symbol){
        return true;
      }
      if(boardState[2]==symbol&&boardState[4]==symbol&&boardState[6]==symbol){
        return true;
      }
    }
    return false;
  }
}
