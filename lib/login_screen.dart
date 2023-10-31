import 'package:e_commerce/register_screen.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  static const String routeName='Login';
  var Email = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          decoration: BoxDecoration(color: Color.fromARGB(255, 2, 15, 83)),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Color.fromARGB(255, 245, 194, 41),
                        size: 30,
                      )),
                  Spacer(
                    flex: 2,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                        color: Color.fromARGB(255, 245, 195, 44),
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                ],
              ),
              Spacer(
                flex: 2,
              ),
              Text(
                "please sige in to countinue",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Spacer(
                flex: 3,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: Email,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Email",
                    prefixIcon: Icon(
                      Icons.person,
                      size: 30,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(74, 32, 2, 1),
                          width: 3,
                        ))),
              ),
              Spacer(
                flex: 2,
              ),
              TextFormField(
                obscureText: true,
                controller: password,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Password",
                    prefixIcon: Icon(
                      Icons.visibility_off,
                      size: 30,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(74, 32, 2, 1),
                          width: 3,
                        ))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => Forget()));
                      },
                      child: Text(
                        "Forget password?",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
              Spacer(
                flex: 2,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(
                      Color.fromARGB(255, 245, 194, 41)),
                  fixedSize:
                      MaterialStateProperty.all<Size>(const Size(350, 50)),
                ),
              ),
              Spacer(
                flex: 2,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Or sign in in with",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
              Spacer(
                flex: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/facebook.png'),
                        backgroundColor: Colors.white,
                        radius: 30,
                      )),
                  TextButton(
                    onPressed: () {},
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/google.png'),
                      backgroundColor: Colors.white,
                      radius: 30,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/ios.png'),
                      radius: 30,
                    ),
                  ),
                ],
              ),
              Spacer(
                flex: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don”t have an account ? ",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => Register(),));
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(fontSize: 17, color: Colors.amber),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
