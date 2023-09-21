import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsproject/modules/cards.dart';

class Dashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return DashboardState();
  }
}
class DashboardState extends State<Dashboard>{




  @override
  Widget build(BuildContext context){
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body:Column(
        children: [
          const SizedBox(height: 60,),

          Container(
            height: size.height/5,
              width: size.width/1.1,

              child: ListView.builder(scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context,index)
              =>
                  CardModules.Cards(size,
                      "digital wallets in the cards ....",
                      "2323-2-2",
                      "https://www.pixelstalk.net/wp-content/uploads/2016/07/Wallpapers-pexels-photo.jpg"
                  ),
              )
          )
              ],
      ) ,
    );
  }
}