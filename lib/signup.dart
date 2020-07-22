import 'package:ecommerceapp1/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/signup.jpg'),
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

                Text("Register Your Self", style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text("Register", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),),
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Already have An Account ? ",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                      },
                      child: Text("Login",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),

                  ],
                ),

                SizedBox(height: 30,),
                Container(
                  //width: size.width * 0.8,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          height: 1.5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text("OR",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Colors.orange.shade100,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset("images/facebook.svg", height: 15,width: 10,color: Colors.white,)
                      ),
                    ),

                    GestureDetector(
                      onTap: (){},
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Colors.orange.shade100,
                            ),
                            shape: BoxShape.circle,
                          ),
                         child: SvgPicture.asset("images/google-plus.svg", height: 15,width: 10,color: Colors.white,)
                      ),
                    ),


                    GestureDetector(
                      onTap: (){},
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Colors.orange.shade100,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset("images/twitter.svg", height: 15,width: 10, color: Colors.white,)
                      ),
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