import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsproject/modules/cards.dart';
import 'package:newsproject/static.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DashboardState();
  }
}

class DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; // variable declaration
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Container(
              // Container create
              height: size.height / 5, // height of container
              width: size.width / 1.1, // width of container

              child: ListView.builder(
                scrollDirection: Axis.horizontal, // List View Start
                itemCount: 5, // total items display
                itemBuilder: (context, index) => CardModules.Cards(
                    // Call cards from another page
                    size,
                    "Digital wallets in the cards ....", //title
                    "2323-2-2", // date
                    "https://www.pixelstalk.net/wp-content/uploads/2016/07/Wallpapers-pexels-photo.jpg"), // url
              )),
          Container(
            height: size.height / 1.5,
            width: size.width,
            child: ListView.builder(
                itemCount: 7,
                physics: const AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    height: size.height / 7,
                    width: size.width,
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        CardModules.VideoCard("https://www.pixelstalk.net/wp-content/uploads/2016/07/Wallpapers-pexels-photo.jpg"),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CardModules.CardTitle(size,"Today  is hsjhdg gd hsdfhjad jhgjahdsfasgdf "),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height:35,
                                  width:90,
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text("kantipur.com", style: StaticValues.urlbutton,maxLines: 1,overflow: TextOverflow.visible),
                                ),
                                Text("22 sept 2024", style: TextStyle(color: Colors.black, fontSize: 12),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
