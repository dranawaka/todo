import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool today=true, tomorrow=false, nextWeek=false;
  bool suggest = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(onPressed: (){

      },child: Icon(Icons.add,color: Color(0xFF249fff),size: 30.0,),

      ),

      body: Container(
        padding: EdgeInsets.only(top: 90.00, left: 30.00),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xFF232FDA2),Color(0xFF13D8CA),Color(0xFF09adfe)],
        begin: Alignment.topLeft,end: Alignment.bottomRight
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
          "HELLO\nDilan",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold
          ),
        ),
            SizedBox(height: 10.0,),
            Text(
              "Good Morning",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
             today? Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                  decoration: BoxDecoration(color: Color(0xFF3dffe3),borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Today",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              ): GestureDetector(
               onTap: (){
                 today=true;
                 tomorrow=false;
                 nextWeek=false;
                  setState(() {

                  });
               },
                child: Text(
                 "Today",
                 style: TextStyle(
                     color: Colors.white,
                     fontSize: 22.0,
                     fontWeight: FontWeight.w400
                 ),
             ),
              ) ,
                tomorrow? Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                    decoration: BoxDecoration(color: Color(0xFF3dffe3),borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Tomorrow",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ): GestureDetector(
                  onTap: (){
                    today=false;
                    tomorrow=true;
                    nextWeek=false;
                    setState(() {

                    });
                  },
                  child: Text(
                    "Tomorrow",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ) ,
                nextWeek? Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                    decoration: BoxDecoration(color: Color(0xFF3dffe3),borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Next Week",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ): GestureDetector(
                  onTap: (){
                    today=false;
                    tomorrow=false;
                    nextWeek=true;
                    setState(() {

                    });
                  },
                  child: Text(
                    "Next Week",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ) ,
            ],
            ),
            SizedBox(height: 20.0,),
            CheckboxListTile(
              activeColor: Color(0xFF279cfb),
              title: Text("Go to gym", style: TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.w400),),
              value: suggest, onChanged: (newValue){

              setState(() {
                suggest = newValue!;
              });


            },
            controlAffinity: ListTileControlAffinity.leading,
            )



      ],),),
    );
  }
}
