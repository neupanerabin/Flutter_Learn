
import 'package:flutter/material.dart';
import 'package:loginpage/secondPage.dart';

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }

}
class HomeState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return
      Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.access_time_filled_sharp,size: size.width/5,color: const Color(
                      0xff550909),),
                  const Text("DEMO",
                    style: TextStyle(color: Colors.black,fontSize: 14,
                        fontWeight: FontWeight.bold),)
                ],
              ),
              Container(
                height: size.height/2.5,
                width: size.width/1.1,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20,),
                    const Padding(padding: EdgeInsets.only(left: 25,top: 15),
                        child: Text("Sign in",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          height: 50,
                          width: size.width/1.2,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: const Center(child: Text("Email",style: TextStyle(color: Colors.brown,fontSize: 18),))
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          height: 50,
                          width: size.width/1.2,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: const Center(child: Text("Password",style: TextStyle(color: Colors.brown,fontSize: 18),))
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>  SecondPage(),
                           ),
                            );

                          },
                          child: Container(
                            height: 50,
                            width: 140,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: const Center(child: Text("Signin",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold), )),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
  }
}