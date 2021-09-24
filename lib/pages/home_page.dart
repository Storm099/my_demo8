import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Storm"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Hi Flutter from Storm"),

      ),
      drawer: Drawer(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Expanded(
             flex: 2,
             child: Container(
               color: Colors.blue,
               padding: EdgeInsets.all(20),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [

                   Container(
                     height: 70,
                     width: 70,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       image: DecorationImage(
                         fit: BoxFit.cover,
                         image: AssetImage("assets/images/mypic2.jpg")
                       )
                     ),
                   ),
                   Text("Yorqin Abrayev",style: TextStyle(color: Colors.white,fontSize: 18),),
                   SizedBox(height: 5,),
                   Text("Yorqinbekabrayev1999@gmail.com",style: TextStyle(color: Colors.white),)

                 ],
               ),

             ),
           ),

           Expanded(
             flex: 4,
             child: Container(
               color: Colors.white,
               child: Column(
                 children: [
                   Container(
                     height: 60,
                     color: Colors.white,
                     child: Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Icon(
                             (Icons.home),
                           ),
                         ),
                         SizedBox(width: 10,),
                         Text("Home")

                       ],
                     ),
                   ),
                   Container(
                     height: 60,
                     color: Colors.white,
                     child: Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Icon(
                             (Icons.account_circle),
                           ),
                         ),
                         SizedBox(width: 10,),
                         Text("Profile")

                       ],
                     ),
                   ),
                   Container(
                     height: 60,
                     color: Colors.white,
                     child: Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Icon(
                             (Icons.people),
                           ),
                         ),
                         SizedBox(width: 10,),
                         Text("About us")

                       ],
                     ),
                   )


                 ],
               ),

             ),
           )

         ],
       ),
      ),
    );
  }
}
