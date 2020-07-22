import 'package:ecommerceapp1/Shop.dart';
import 'package:ecommerceapp1/signup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/login.jpg'),
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
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20,),

                Text("Login", style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.white,
                ),),
                SizedBox(height: 50,),

                TextFieldContainer(
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person,
                        color: Colors.orange,
                      ),
                      hintText: "Your Email...",
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),

                TextFieldContainer(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock,
                        color: Colors.orange,
                      ),
                      suffixIcon: Icon(Icons.visibility, color: Colors.orange,),
                      hintText: "Your Password...",
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),

                SizedBox(height: 50,),

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Shop()));
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text("Login", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),),
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have An Account ? ",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));
                      },
                      child: Text("Sign Up",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.bold,
                        ),),
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
}

class TextFieldContainer extends StatelessWidget {

  final Widget child;

  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size; //this size is provided total height and width of our screen
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.orange.shade50,
        borderRadius: BorderRadius.circular(30),
      ),
      child: child,
    );
  }
}