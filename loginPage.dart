import 'package:flutter/material.dart';
import 'package:vehcile/home.dart';

import 'registerpage.dart';
class Login extends StatefulWidget {

  @override

  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  bool status=false;
  TextEditingController mobile = new TextEditingController();
  TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar:AppBar(
          title: Text("SIGN IN",style: TextStyle(color: Colors.white,fontSize: 20),),
          centerTitle: true,
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed:() {
           // Navigator.push(context, MaterialPageRoute(builder: (context)=>Postpage()));
          }),
        ),
        body:Column(
          children: [
            SizedBox(height: 50,),
            Container(
              child: Text("Welcome to Your Account"),
            ),

            SizedBox(height: 100,),
            Container(
              height: 50,
              child: Text("Login",style: TextStyle(fontSize: 25),),
            ),
            Center(
              child: Form(
                key: _formkey,
                child: Container(
                  height: 70,
                  width: 300,
                  child: TextFormField(
                    controller: mobile,
                    keyboardType:TextInputType.number,
                    validator:(umobile){
                      if(umobile.isEmpty || umobile.length != 10){
                        return "enter Registerd number";
                      }
                      else {
                        print(mobile.text);
                      }
                      return null;
                    },

                    decoration:InputDecoration(border: OutlineInputBorder(),labelText: " Phone Number",hintText: "enter 10 digit Mobile number"),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 70,
              width:
              300,
              child: TextFormField(
                controller: password,
                keyboardType: TextInputType.text,
                validator: (upass){
                  if(upass.isEmpty){
                    return "Enter password";
                  }
                  else {
                    print(password.text);
                  }
                  return null;
                },


                decoration:InputDecoration(border: OutlineInputBorder(),labelText: "Password",hintText: "enter Password"),
              ),
            ),
            MaterialButton(onPressed: () {
              if (_formkey.currentState.validate())
                {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  });
                }
            },
              child: Text("Login",style: TextStyle(color: Colors.white),),color: Colors.indigo,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text("   forget password?",style: TextStyle(color: Colors.indigo),),
              ),
            ),Padding(
              padding: const EdgeInsets.only(top: 180,left: 70),
              child: Container(
                child: Row(
                  children: [
                    Text(" Create a new Account ?",style: TextStyle(color: Colors.black,fontSize: 15),),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));

                        },
                        child: Text("  Signup ",style: TextStyle(color: Colors.indigo,fontSize: 15),)),

                  ],
                ),
              ),
            ),


          ],
        )

    );
  }
}
