import 'package:flutter/material.dart';

import 'loginPage.dart';
class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController name =new TextEditingController();
  TextEditingController email =new TextEditingController();
  TextEditingController mobile =new TextEditingController();
  TextEditingController password =new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SIGN UP",style: TextStyle(color: Colors.white,fontSize: 20),),
        centerTitle: true,
      ),
      body:ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 140,
                    ),
                    Container(
                      child: Text("Register Here..",style: TextStyle(color: Colors.black,fontSize: 20),),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 70,
                        width: 300,
                        child: TextFormField(
                          controller: name,
                          keyboardType:TextInputType.text,
                          validator:(uname){
                            if(uname.isEmpty) {
                              return "enter valid email";
                            }
                            else {
                              print(name.text);
                            }
                            return null;
                          },


                          decoration:InputDecoration(border: OutlineInputBorder(),labelText: " Name",hintText: "enter name"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 70,
                        width: 300,

                        child: TextFormField(
                          controller: email,
                          keyboardType:TextInputType.text,
                          validator:(uemail){
                            if(uemail.isEmpty) {
                              return "enter valid email";
                            }
                            else {
                              print(email.text);
                            }
                            return null;
                          },

                          decoration:InputDecoration(border: OutlineInputBorder(),labelText: " Email",hintText: "enter Email address"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 70,
                        width: 300,
                        child: TextFormField(
                          controller: mobile,
                          keyboardType:TextInputType.number,
                          validator:(umobile){
                            if(umobile.isEmpty || umobile.length != 10){
                              return "enter valid Mobile number";
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
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
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

                    ), GestureDetector(
                      onTap: () {
                        if(_formkey.currentState.validate())
                        {

                        }
                        else{
                          print("enter the registerd mobile and password");
                        }
                        // {
                        //   setState(() {
                        //     status=false;
                        //     print("hey");
                        //   });
                        // }

                      },


                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                        },
                        child: Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.indigo
                          ),
                          child: Center(
                            child: Text("Save",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                        child : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("You have Account ?",style: TextStyle(fontSize: 18),),
                            GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                                },
                                child: Text(" Login",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.indigo),))
                          ],
                        )
                    )


                  ],

                )),

          )
        ],

      ),

    );
  }
}
