import 'package:ecommerceapp1/Category.dart';
import 'package:ecommerceapp1/Details.dart';
import 'package:ecommerceapp1/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            children: <Widget>[

              //Design HEADER
              UserAccountsDrawerHeader(
                accountName: Text('Darvin Shane'),
                accountEmail: Text('darvinShane@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/IMG_0794.PNG'),
                    backgroundColor: Colors.orangeAccent,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  image: const DecorationImage(
                    image: AssetImage('images/login.png'),
                    alignment: Alignment.centerRight,
                    //  fit: BoxFit.cover,
                  ),
                ),
              ),

              //Design Body
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Shop()));
                },
                child: ListTile(
                  title: Text('Home', style: TextStyle(fontWeight: FontWeight.bold),),
                  leading: Icon(Icons.home, color: Colors.pink),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('My Account', style: TextStyle(fontWeight: FontWeight.bold),),
                  leading: Icon(Icons.person, color: Colors.pink),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('My Orders', style: TextStyle(fontWeight: FontWeight.bold),),
                  leading: Icon(Icons.shopping_basket, color: Colors.pink),
                ),
              ),
              InkWell(
                onTap: (){

                },
                child: ListTile(
                  title: Text('Shopping Cart', style: TextStyle(fontWeight: FontWeight.bold),),
                  leading: Icon(Icons.shopping_cart, color: Colors.pink),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Favourites', style: TextStyle(fontWeight: FontWeight.bold),),
                  leading: Icon(Icons.favorite, color: Colors.pink),
                ),
              ),
              SizedBox(
                child: Divider(
                  color: Colors.pink,
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Settings', style: TextStyle(fontWeight: FontWeight.bold),),
                  leading: Icon(Icons.settings, color: Colors.black),
                ),
              ),InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('About Us', style: TextStyle(fontWeight: FontWeight.bold),),
                  leading: Icon(Icons.help, color: Colors.blue),
                ),
              ),InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: ListTile(
                  title: Text('Logout', style: TextStyle(fontWeight: FontWeight.bold),),
                  leading: Icon(Icons.call_missed, color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
             Container(
               height: 400,
              decoration: BoxDecoration(
                    image: DecorationImage(
                    image: AssetImage('images/Welcome.jpg'),
                    fit: BoxFit.cover,
                    ),
                ),
              child: Container(
                  decoration: BoxDecoration(
                  gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [Colors.black.withOpacity(0.9),Colors.black.withOpacity(0.3)]
                  ),
                ),

                child: Padding(
                  padding: EdgeInsets.only(top: 40, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              IconButton(icon: Icon(Icons.favorite, color: Colors.white, size: 40,), onPressed: (){}),
                              SizedBox(width: 20,),
                              IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white, size: 40,), onPressed: (){}),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              IconButton(icon: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 40,), onPressed: (){}),
                              Text("Menu", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),)
                            ],
                          ),
                        ],
                      ),

                      Padding(padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Best Place For Best Products", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                            SizedBox(height: 20,),

                            Row(
                              children: <Widget>[
                                Text("Best and Quality Products For Everyone !!!", style: TextStyle(color: Colors.white, fontSize: 15),),
                                SizedBox(width: 5,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
             ),

            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Categories", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink, fontSize: 20),),

                      Row(
                        children: <Widget>[
                          Text("All", style: TextStyle(color: Colors.pink),),
                          Icon(Icons.arrow_forward_ios, color: Colors.pink,),
                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: 20,),

                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Category(image: "images/juice.jpg", title: "Fruit Juice", tag: "Fruit Juice"),
                        Category(image: "images/salad.jpg", title: "Fruit Salad", tag: "Fruit Salad"),
                        Category(image: "images/cake.jpg", title: "Fruit Cakes", tag: "Fruit Cake"),
                        Category(image: "images/pudding.jpg", title: "Fruit Pudding", tag: "Fruit Pudding"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Best Sellings", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink, fontSize: 20),),
                      SizedBox(width: 50,),
                      Row(
                        children: <Widget>[
                          Text("All", style: TextStyle(color: Colors.pink),),
                          Icon(Icons.arrow_forward_ios, color: Colors.pink,),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),

                  Container(
                    height: 170,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Best_Products(image: "images/mixed.jpg", title: "Mixed Fruit Juice", price: "Rs.400/=",
                            description: "Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables. It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice. Juice is commonly consumed as a beverage or used as an ingredient or flavoring in foods or other beverages, as for smoothies. "),
                        Best_Products(image: "images/mango.jpg", title: "Mango Juice", price: "Rs.300/=",
                            description: "Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables. It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice. Juice is commonly consumed as a beverage or used as an ingredient or flavoring in foods or other beverages, as for smoothies. "),
                        Best_Products(image: "images/watermelon.jpg", title: "Watermelon Juice", price: "Rs.200/=",
                            description: "Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables. It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice. Juice is commonly consumed as a beverage or used as an ingredient or flavoring in foods or other beverages, as for smoothies. "),
                        Best_Products(image: "images/orange.jpg", title: "Orange Juice", price: "Rs.250/=",
                            description: "Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables. It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice. Juice is commonly consumed as a beverage or used as an ingredient or flavoring in foods or other beverages, as for smoothies. "),
                        Best_Products(image: "images/strawberries.jpg", title: "Strawberry Juice", price: "Rs.400/=",
                            description: "Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables. It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice. Juice is commonly consumed as a beverage or used as an ingredient or flavoring in foods or other beverages, as for smoothies. "),
                        Best_Products(image: "images/pawpaw.jpg", title: "Pawpaw Juice", price: "Rs.500/=",
                            description: "Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables. It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice. Juice is commonly consumed as a beverage or used as an ingredient or flavoring in foods or other beverages, as for smoothies. "),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Category({image, title, tag}) {
    return AspectRatio(
      aspectRatio: 2/2.5,
      child: Hero(
        tag: tag,
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> CategoryPage(image: image, title: title, tag: tag,)));
          },
          child: Material(
            child: Container(
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
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
                    colors: [Colors.black.withOpacity(0.9), Colors.black.withOpacity(0.1),],
                  ),
                ),

                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget Best_Products({image, title, price, description}) {
    return AspectRatio(
      aspectRatio: 3.5/2.2,
      child: GestureDetector(
        onTap: (){
          Navigator.push(context,  MaterialPageRoute(builder: (context)=> Details(image: image,title: title,price: price,description: description,)));
        },
        child: Material(

          child: Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.orange.withOpacity(0.3),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fill,
              ),
            ),

            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [Colors.black.withOpacity(1.0), Colors.black.withOpacity(0.2),],
                ),
              ),

              child: Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        Text(price, style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),)
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.favorite, color: Colors.orange,size: 20,), onPressed: (){}),
                        IconButton(icon: Icon(Icons.shopping_cart, color: Colors.orange, size: 20,), onPressed: (){}),
                      ],
                    ),
                  ],

                ),
              ),

            ),
          ),
        ),
      ),
    );
  }
}


