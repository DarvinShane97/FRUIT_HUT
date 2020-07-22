import 'package:ecommerceapp1/Shop.dart';
import 'package:ecommerceapp1/login.dart';
import 'package:flutter/material.dart';

class Drawer extends StatefulWidget {
  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<Drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                image: AssetImage('images/mixed.jpg'),
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
    );
  }
}
