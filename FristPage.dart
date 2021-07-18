import 'package:flutter/material.dart';
import 'package:vehcile/loginPage.dart';
import 'package:vehcile/registerpage.dart';
class fristPage extends StatefulWidget {
  @override
  _fristPageState createState() => _fristPageState();
}

class _fristPageState extends State<fristPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: Column(
     mainAxisAlignment: MainAxisAlignment.center,

     children: [
       SizedBox(
         height: 100,
       ),
       Container(child: Text("E - Spare",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.indigo),)),
       Container(
           alignment:Alignment.center,child: Text(" find your vehicle spare on your finger",
         style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.black),)),
       SizedBox(height: 150,),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: GestureDetector(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
           },
           child: Container(
             height: 50,
             width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blueAccent),
             child: Center(child: Text("Sign up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),))
           ),
         ),
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: GestureDetector(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
           },
           child: Container(
               height: 50,
               width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blueAccent),
               child: Center(child: Text("Sign in",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),))
           ),
         ),
       )

     ],
   ),
    );
  }
}
