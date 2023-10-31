import 'package:e_commerce/restert_password.dart';
import 'package:flutter/material.dart';

import 'forget_password.dart';

class OTP extends StatefulWidget {
  static const String routeName ='OTP';
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  var a=TextEditingController();
  var b=TextEditingController();
  var c=TextEditingController();
  var d=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal:20,vertical: 50),
        decoration: BoxDecoration(color: Color.fromARGB(255, 2, 15, 83)),
        child: Column(

          children: [
            Row(


              children: [
                IconButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Forget(),));
                }, icon:Icon(Icons.arrow_back_ios_new,color: Color.fromARGB(255, 245, 194, 41),size: 30,)),
                Spacer(flex: 2,),
                Text("OTP",style: TextStyle(color: Color.fromARGB(255, 245, 195, 44),fontWeight: FontWeight.bold,fontSize: 35),),
                Spacer(flex: 2,),

              ],
            ),
            Spacer(flex: 1,),
            Text("An authentication code has been\n sent to furnmert@gmail.com ",style: TextStyle(fontSize: 18,color: Colors.white),),
            Spacer(flex: 1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(flex: 1,),
                Container(
                  width: 50,
                  height: 60,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: a,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(74, 32, 2, 1),
                              width: 3,
                            )
                        )

                    ),
                  ),
                ),
                Spacer(flex: 1,),
                Container(
                  width: 50,
                  height: 60,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: b,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(74, 32, 2, 1),
                              width: 3,
                            )
                        )

                    ),
                  ),
                ),
                Spacer(flex: 1,),
                Container(
                  width: 50,
                  height: 60,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: c,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(74, 32, 2, 1),
                              width: 3,
                            )
                        )

                    ),
                  ),
                ),
                Spacer(flex: 1,),
                Container(
                  width: 50,
                  height: 60,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: d,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(74, 32, 2, 1),
                              width: 3,
                            )
                        )

                    ),
                  ),
                ),
                Spacer(flex: 1,)
              ],
            ),

            Spacer(flex: 1,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Reset(),));
            }, child: const Text("Submit" ,style: TextStyle(color: Colors.black,fontSize: 20),),
              style: ButtonStyle (backgroundColor: const MaterialStatePropertyAll( Color.fromARGB(255, 245, 194, 41)),
                fixedSize: MaterialStateProperty.all<Size>(const Size(350, 50)),
              ),
            ),
            Spacer(flex: 1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Code sent.Resend Code in ",style: TextStyle(color: Colors.white,fontSize: 20),),
                Text("00:50 ",style: TextStyle(color: Colors.amber,fontSize: 20),),
              ],
            ),
            Spacer(flex: 7,),

          ],
        ),


      ),


    );
  }
}
