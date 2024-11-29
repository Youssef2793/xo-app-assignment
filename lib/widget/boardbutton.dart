import 'package:flutter/material.dart';

class BoardButton extends StatelessWidget {
 String text;
 int index;
 Function onClickChange;
 BoardButton(this.text, this.index,this.onClickChange);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 100,
      height: 100,
      margin: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Expanded(
                     child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                    onPressed: (){
                      onClickChange(index);
                    },
                     child: Text(text, style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                     ),)),
                    ),
    );        
  }
}