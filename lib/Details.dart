
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {

  final String title;
  final String image;
  final String price;
  final String description;

  const Details({
    Key key,
    this.title,
    this.image,
    this.price,
    this.description
  }) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                      fit: BoxFit.cover,
                    ),
                  ),

                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [Colors.black.withOpacity(0.9), Colors.black.withOpacity(0.3),],
                      ),
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Column(
                          children: <Widget>[
                            SizedBox(height: 30,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                                  onPressed: (){
                                    Navigator.pop(context);
                                  },
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    IconButton(icon: Icon(Icons.search, color: Colors.white, size: 40,), onPressed: (){}),
                                    SizedBox(width: 20,),
                                    IconButton(icon: Icon(Icons.favorite, color: Colors.white, size: 40,), onPressed: (){}),
                                    SizedBox(width: 20,),
                                    IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white, size: 40,), onPressed: (){}),
                                  ],
                                ),
                              ],

                            ),
                          ],
                        ),

                        Text(widget.title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
                      ],
                    ),
                  ),
                ),



            Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[

                    Text("Product Description", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink, fontSize:25),),
                    SizedBox(height: 20,),
                    Text(widget.description, style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 10),),
                  ],
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 30, bottom: 20),
                    child: Container(
                      height: 50,
                      width: 140,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(widget.price, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange, fontSize: 25),),
                      ),
                    ),

                ),

                SizedBox(width: 5,),

                Padding(
                  padding: EdgeInsets.only( right: 30, bottom: 20),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      height: 50,
                      width: 140,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text("Add To Cart", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
