import 'package:flutter/material.dart';
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Accerceries"),
        centerTitle: true,
        actions: [
         Row(

      children: [
      IconButton(icon: Icon(Icons.notifications,color: Colors.white,), onPressed: null),
      IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.white,), onPressed: null),
    ],
    ),],
      ),
    body: Container(
      child: Column(
          children: [

            ),


          ],

      ),
    ),

















    );
  }
}
