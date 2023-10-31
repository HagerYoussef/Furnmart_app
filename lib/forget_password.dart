import 'package:e_commerce/register_screen.dart';
import 'package:flutter/material.dart';

import 'otp.dart';

class Forget extends StatefulWidget {
  static const String routeName='ForgetPassword';

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  var email=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal:20,vertical: 50),
        decoration: BoxDecoration(color: Color.fromARGB(255, 2, 15, 83)),
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                IconButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Register(),));
                }, icon:Icon(Icons.arrow_back_ios_new,color: Color.fromARGB(255, 245, 194, 41),size: 30,)),

                Text("Forget Password",style: TextStyle(color: Color.fromARGB(255, 245, 195, 44),fontWeight: FontWeight.bold,fontSize: 30),),


              ],
            ),
            Spacer(flex: 1,),
            Text("Enter your email to reset password",style: TextStyle(fontSize: 20,color: Colors.white),),
            Spacer(flex: 1,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: email,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Email",
                  prefixIcon: Icon(Icons.person,size: 30,),
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
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => OTP(),));
            }, child: const Text("Reset password" ,style: TextStyle(color: Colors.black,fontSize: 20),),
              style: ButtonStyle (backgroundColor: const MaterialStatePropertyAll( Color.fromARGB(255, 245, 194, 41)),
                fixedSize: MaterialStateProperty.all<Size>(const Size(350, 50)),
              ),
            ),
            Spacer(flex: 7,),

          ],
        ),


      ),


    );
  }
}
