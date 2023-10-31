import 'package:flutter/material.dart';

import 'login_screen.dart';

class Register extends StatefulWidget {

static const String routeName='Register';

  @override
  State<Register> createState() => _RegistState();
}

class _RegistState extends State<Register> {
  var Name = TextEditingController();
  var email = TextEditingController();
  var pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        decoration: BoxDecoration(color: Color.fromARGB(255, 2, 15, 83)),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(

              children: [
                IconButton(onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login(),));
                },
                    icon: Icon(Icons.arrow_back_ios_new,
                      color: Color.fromARGB(255, 245, 194, 41), size: 30,)),
                Spacer(flex: 2,),

                Text("Register", style: TextStyle(
                    color: Color.fromARGB(255, 245, 195, 44),
                    fontWeight: FontWeight.bold,
                    fontSize: 30),),
                Spacer(flex: 2,),

              ],
            ),
            Spacer(flex: 1,),
            Text("please enter your phone and password ",
              style: TextStyle(fontSize: 20, color: Colors.white),),
            Text("  to continue",
              style: TextStyle(fontSize: 20, color: Colors.white),),
            Spacer(flex: 3,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: Name,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Name",
                  prefixIcon: Icon(Icons.person, size: 30,),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(74, 32, 2, 1),
                        width: 3,
                      )
                  )


              ),
            ),
            Spacer(flex: 1,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: email,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Email",
                  prefixIcon: Icon(Icons.email, size: 30,),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(74, 32, 2, 1),
                        width: 3,
                      )
                  )


              ),
            ),
            Spacer(flex: 1,),
            TextFormField(
              obscureText: true,
              controller: pass,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Password",
                  prefixIcon: Icon(Icons.visibility_off, size: 30,),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(74, 32, 2, 1),
                        width: 3,
                      )
                  )


              ),
            ),


            Spacer(flex: 3,),
            ElevatedButton(onPressed: () {},
              child: const Text("Register",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(
                    Color.fromARGB(255, 245, 194, 41)),
                fixedSize: MaterialStateProperty.all<Size>(const Size(350, 50)),
              ),
            ),
            Spacer(flex: 2,),
            TextButton(onPressed: () {},
              child: Text("Or sign in in with",
                style: TextStyle(fontSize: 17, color: Colors.white),),),
            Spacer(flex: 2,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: () {},
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/facebook.png'),
                      backgroundColor: Colors.white,
                      radius: 30,)),

                TextButton(onPressed: () {},
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/google.png'),
                    backgroundColor: Colors.white,
                    radius: 30,),

                ),

                TextButton(onPressed: () {},
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/ios.png'),
                    radius: 30,),
                ),
              ],
            ),
            Spacer(flex: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Have an account ? ",
                  style: TextStyle(fontSize: 17, color: Colors.white),),
                TextButton(onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register(),));
                },
                  child: Text("Sign in",
                    style: TextStyle(fontSize: 17, color: Colors.amber),),),
              ],)
          ],
        ),


      ),


    );
  }
}