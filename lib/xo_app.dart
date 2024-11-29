import 'package:flutter/material.dart';
import 'package:ox_app/playersname.dart';

class XO_app extends StatelessWidget {
  static const String routname='routname';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/oximage.png'),
          fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Expanded(
          child: Container(
            decoration: BoxDecoration(
           color: Colors.white.withOpacity(0.9),
           borderRadius: BorderRadius.circular(20)
            ),
            margin: EdgeInsets.only(top: 500,left: 20,right: 20,bottom: 10),
            
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                Text('welcome to',style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
                Text('X-O Game!',style: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.only(left: 30,right: 20),
                  child:Column( 
                    children: [
                      Text('wkdniwf wijhfiuwhf ijwifhudfw hiwfhuhgfw ihuhgfwhijf ugwfugf uwgygwyf fjojkf oj wugfyfwgdyfw fwij wfbbf ugwfygwf ugwygd fwu ywfg ugwfdu gw ugywfg ywguy wf')])),
                      SizedBox(height: 10,),
                  ElevatedButton( 
                    onPressed: (){
Navigator.pushNamed(context, PlayersName.routname);  
                    }, 
                    child: Text("Start game",style: TextStyle(
                      color: Colors.purple,
                    ),)),
                    SizedBox(height: 10,),
                     ElevatedButton( 
                    onPressed: (){

                    }, 
                    child: Text("skip",style: TextStyle(
                      color: Colors.black,
                    ),)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}