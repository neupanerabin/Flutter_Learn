import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardModules {
  static Widget Cards(var size, String title, String date, imageurl) {
    return Stack(
      children: [
        Container(
          height: size.height / 5,
          width: size.width / 2,
          margin: const EdgeInsets.only(left: 15, right: 15),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(30),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              imageurl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 25,
          bottom: 25,
          child: Container(
            width: 200,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
            ),
          ),
        ),
        Positioned(
          left: 25,
          bottom: 5,
          child: Container(
            width: 200,
            child: Text(
              date,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
            ),
          ),
        ),
        Positioned(
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
}
