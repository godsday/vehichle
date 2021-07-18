import 'package:flutter/material.dart';
import 'package:vehcile/Model.dart';
import 'package:vehcile/products.dart';


class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delares"),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        actions: [
          Row(

            children: [
              IconButton(icon: Icon(Icons.notifications,color: Colors.white,), onPressed: null),
              IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.white,), onPressed: null),
            ],
          )

        ],
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5
        ),
            itemCount: Shoplist.length,
            itemBuilder:(context,index){
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Products()));
            },
            child: Container(
              height:450,
              width: 200,
              child: Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: [
                    Container(
                      height:100,
                        child: Image.asset(Shoplist[index]["photo"])),
                    Container(
                        height:30,child: Text(Shoplist[index]["name"])),
                    Container(
                      alignment: Alignment.centerLeft,
                        height:20,
                        child: Row(
                          children: [
                            Text("Rating :",style: TextStyle(color: Colors.red),),
                            Container(
                                alignment:Alignment.centerLeft,child: Text(Shoplist[index]["names"],
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,letterSpacing: 2.0)))
                          ],
                        )),
                  ],
                ),
              ),
            ),
          );
        }),
      )
    );
  }
}
