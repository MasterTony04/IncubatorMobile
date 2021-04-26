import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        height: 300,
        width: 200,

        child: Padding(
          padding: const EdgeInsets.only(left:16.0,top: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.autorenew_rounded,size: 40,),
              SizedBox(height: 5,),
              Text("Inside Temperature",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Row(
                children: [
                  Text("37.8",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold)),
                  Text("c"),
                ],
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
      ),
    );
  }
}
