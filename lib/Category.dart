
import 'package:ecommerceapp1/Details.dart';
import 'package:ecommerceapp1/Shop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {

  final String title;
  final String image;
  final String tag;

  const CategoryPage({
    Key key,
    this.title,
    this.image,
    this.tag
  }) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Hero(
              tag: widget.tag,
              child: Material(
                child: Container(
                  height: 250,
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
              ),
            ),

            Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("New Products", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink, fontSize: 20),),
                        Row(
                          children: <Widget>[
                            Text("View More", style: TextStyle(color: Colors.pink, fontSize: 15),),
                            SizedBox(width: 10,),
                            Icon(Icons.arrow_forward_ios, size: 13, color: Colors.pink,),
                          ],
                        )
                      ],
                    ),


                    SizedBox(height: 30,),

                    Product(image: "images/strawberries.jpg", title: "Strawberry Juice", price: "Rs.400/=",),
                    Product(image: "images/mixed.jpg", title: "Mixed Fruit Juice", price: "Rs.400/=", ),
                    Product(image: "images/orange.jpg", title: "Orange Juice", price: "Rs.250/=", ),
                    Product(image: "images/pawpaw.jpg", title: "Pawpaw Juice", price: "Rs.500/=",),
                    Product(image: "images/watermelon.jpg", title: "Watermelon Juice", price: "Rs.200/=",),
                    Product(image: "images/mango.jpg", title: "Mango Juice", price: "Rs.300/=",),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget Product({image, title, price, description}){
  return GestureDetector(
    onTap: (){
     // Navigator.push(context, MaterialPageRoute(builder: (context)=> Details(title: title,image: image,price: price,)));
    },
    child: Material(
      child: Container(
              height: 200,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [Colors.black.withOpacity(1), Colors.black.withOpacity(0.1),],
                  ),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            Text(title, style: TextStyle(color: Colors.white, fontSize: 20),),
                            Text(price, style: TextStyle(color: Colors.orange, fontSize: 40, fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Icon(Icons.favorite, color: Colors.white,),
                                SizedBox(width: 20,),
                                Icon(Icons.add_shopping_cart, color: Colors.white,),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
    ),
  );
}