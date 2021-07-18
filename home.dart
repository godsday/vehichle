import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'Model.dart';
import 'ShopDetails.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController feild =new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        toolbarHeight: 65 ,
        title: Text("E -Spare"),
        actions: [
          Row(

            children: [
              IconButton(icon: Icon(Icons.notifications,color: Colors.white,), onPressed: null),
              IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.white,), onPressed: null),
            ],
          )
        ],

      ),
      body:ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical ,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  child: TextFormField(
                    autocorrect: true,
                    decoration:InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),fillColor: Colors.indigo,
                        hintText: "Search here.....",contentPadding:EdgeInsets.all(15) ),
                  ),
                ),
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: CarouselSlider.builder(itemCount: DataList.length,
                    itemBuilder:(BuildContext context,index){
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      height: 200,
                        width:MediaQuery.of(context).size.width
                        ,child: Image.asset(DataList[index]["image"],fit: BoxFit.cover,)),
                  );
                    }, options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true
                    )),
              ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.centerLeft,
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text("Best discount shops"
                    "",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Shop()));
                },
                child: Container(
                  height: 240,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:Shoplist.length,
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: 160,
                                width: 150,

                                child: Image.asset(Shoplist[index]["photo"],fit: BoxFit.cover,),
                              ),
                              Container(
                                  alignment: Alignment.center,
                                  height: 60,
                                  width: 150,
                                  child: Text(Shoplist[index]["name"]))
                            ],
                          ),
                        );

                      }),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text("  Top selling Product",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              Container(
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount:Photolist.length,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 160,
                              width: 150,

                              child: Image.asset(Photolist[index]["photo"]),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 60,
                                width: 150,
                                child: Text(Photolist[index]["name"]))
                          ],
                        ),
                      );

                    }),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: Text("  Top selling Brands",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              Container(
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount:carlist.length,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 160,
                              width: 150,

                              child: Image.asset(carlist[index]["photo"],fit: BoxFit.contain,),
                            ),
                            Container(
                                alignment: Alignment.center,
                                height: 60,
                                width: 150,
                                child: Column(
                                  children: [
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Rating ",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 20),)),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                        child: Text(carlist[index]["name"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,letterSpacing: 2.0),)),
                                  ],
                                ))


                          ],
                        ),
                      );

                    }),
              ),



              
            ],
          ),

        ],

      ),
      drawer: Drawer(
        elevation: 2.0,
        child: Container(
            child: Column(
              children: [
                Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.indigo,
                    child:Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.home_outlined,color: Colors.white,size: 30,),
                          onPressed: (){},
                          alignment: Alignment.bottomLeft,
                        ),
                        Text("  Home",style: TextStyle(color: Colors.white,fontSize: 20),),
                      ],
                    )
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                 child:ListTile(

                 )
                )

              ],
            )
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        fixedColor: Colors.indigo,


        items:[
          BottomNavigationBarItem(
            icon:Icon(Icons.home,),label: "Home",),
          BottomNavigationBarItem(
            icon:  Icon(Icons.sports_basketball_rounded,),label: "superCoin",),
          BottomNavigationBarItem(
            icon:  Icon(Icons.lightbulb,),label: "Ideas",),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,),label: "Profile",),


        ],
      ),

    );
  }
}
