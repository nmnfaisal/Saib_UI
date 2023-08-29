import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {

  bool _rememberMe = false;
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/bg_landing.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          // alignment: Alignment.center,
          children: [
            Container(),
            Positioned(
              // top: MediaQuery.of(context).size.height / 2 - 100, // Center vertically
              // left: MediaQuery.of(context).size.width / 2 - 100, // Center horizontally

              child: Container(
              // padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25),
              height: 130.0,
              width: double.infinity, // Code to assign full width
              decoration: const BoxDecoration(
                image: DecorationImage( image: AssetImage('assets/line.png'), fit: BoxFit.fill),
                shape: BoxShape.rectangle,
                 ),
              ),
            ),


            Positioned(
              top: MediaQuery.of(context).size.height / 2 - 100, // Center vertically
              left: MediaQuery.of(context).size.width / 2 - 100, // Center horizontally

              child: Container(
                // alignment: Alignment.center,
                // padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.5),
                height: 50,
                width: 250, // Code to assign full width
                decoration: const BoxDecoration(
                  image: DecorationImage( image: AssetImage('assets/logo_saib.png'), fit: BoxFit.fill,),
                  shape: BoxShape.rectangle,
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.5, right:35, left: 35),
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17.0, color: Colors.white),
                      hintText: 'Username',
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 17.0, color: Colors.white),
                      hintText: 'Password',
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),

                  Row(
                    children: [
                      buildRememberassword(),
                    ],
                  ),

                  ElevatedButton(
                    onPressed: () {
                      // Perform login logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),

                  const Text("Forgot Password", style: TextStyle(
                      fontSize: 17.0,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold, color: Colors.white),
                  ),


                  const Text("Register Account", style: TextStyle(
                      fontSize: 17.0,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold, color: Colors.white),
                  ),




                ],
              ),
            ),



            Positioned(
              // top: MediaQuery.of(context).size.height / 2 - 100, // Center vertically
              // left: MediaQuery.of(context).size.width / 2 - 100, // Center horizontally
              bottom: 50,
              left: 50,
             child: Container(
                // alignment: Alignment.center,
                // padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.5),
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage( image: AssetImage('assets/icons/ic_aboutus.png'), fit: BoxFit.fill,),
                  shape: BoxShape.rectangle,
                ),
              ),

             ),

            Positioned(
              // top: MediaQuery.of(context).size.height / 2 - 100, // Center vertically
              left: MediaQuery.of(context).size.width / 2 - 50 , // Center horizontally
              bottom: 50,
              // center: 50,
              child: Container(
                // alignment: Alignment.center,
                // padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.5),
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage( image: AssetImage('assets/icons/ic_locator.png'), fit: BoxFit.fill,),
                  shape: BoxShape.rectangle,
                ),
              ),

            ),

            Positioned(
              // top: MediaQuery.of(context).size.height / 2 - 100, // Center vertically
              // left: MediaQuery.of(context).size.width / 2 - 100, // Center horizontally
              bottom: 50,
              right: 50,
              child: Container(
                // alignment: Alignment.center,
                // padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.5),
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage( image: AssetImage('assets/icons/ic_phone.png'), fit: BoxFit.fill,),
                  shape: BoxShape.rectangle,
                ),
              ),

            )


          ],
        ),
      ),
    );
  }

  Widget buildRememberassword(){
    return Container(
      height: 20,
      child: Row(
        children: [
          Theme(data: ThemeData(unselectedWidgetColor: Colors.white),
              child: Checkbox(
                value:  false,
                checkColor: Colors.blueGrey,
                activeColor: Colors.white,
                onChanged: (value)
                {
                  setState(() {
                    // rememberpwd=value;
                  });
                },
              )),
          const Text("Remember me", style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white),),
        ],
      ),
    );
  }

}
