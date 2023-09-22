import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../static.dart';

class CardModules {
  static Widget Cards(var size, String title, String date, imageurl) {
    return Stack(
      children: [
        Container(
          height: size.height / 5,  // height to container
          width: size.width / 2,
          // width to container
          margin:  EdgeInsets.only(left: 15, right: 15),
          // margin to container
          decoration: BoxDecoration(
            // decoration to the container
            color: Colors.grey, // color used
            borderRadius:
                BorderRadius.circular(30), // make rounded shape to whole box
          ),
          child: ClipRRect(
            // used to decorate the image
            borderRadius: BorderRadius.circular(20),
            // make rounded shape to image only
            child: Image.network(
              imageurl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          // used to maintain  tilte
          left: 25,
          bottom: 25,
          child: Container(
            width: 200,
            child: Text(
              title,      // title call here
              style: TextStyle (
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
            ),
          ),
        ),
        Positioned(
          // used to positioned date
          left: 25,
          bottom: 5,
          child: Container(
            width: 200,
            child: Text(
              date,       // Call date on here
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
            ),
          ),
        ),
         Positioned(   // Used to positioned play icon
          right: 25,
          bottom: 8,
          child: Icon(
            Icons.play_circle_fill,
            color: Colors.white,
            size: 38,
          ),
        ),
      ],
    );
  }

  static Widget CardTitle (var size, String txt){
    return Container(
        width: size.width/2,
        margin:EdgeInsets.only(left:15),
        child: Text(txt,
          style: StaticValues.headernews,
          maxLines: 2,));
  }


  static Widget VideoCard(String imgurl){
    return   Stack(
      children: [
        Container(
          height: 150, // height to container
          width: 120,  // width to container
          margin: EdgeInsets.only(left: 15, right: 0),  // margin to container
          decoration: BoxDecoration(    // decoration to the container
            color: Colors.grey, // color used
            borderRadius: BorderRadius.circular(
                30), // make rounded shape to whole box
          ),
          child: ClipRRect( // used to decorate the image
            borderRadius: BorderRadius.circular(20), // make rounded shape to image only
            child: Image.network(
              imgurl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            top: 50,
            left: 60,
            child: Icon(Icons.play_circle_fill, color: Colors.white, size: 40))

      ],
    );
  }
}
