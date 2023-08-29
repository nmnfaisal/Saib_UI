import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bg_landing.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height / 4 -
                  100, // Center vertically
              left: 0,
              right: 0,

              child: Container(
                height: 130.0,
                width: double.infinity, // Code to assign full width
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/line.png'), fit: BoxFit.fill),
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 4 - 100, // Center vertically
              left: 100,
              child: Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/ic_plane.png'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2.5 -
                  100, // Center vertically
              left: 80,
              right: 80,

              child: Container(
                height: 70,
                width: 250, // Code to assign full width
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo_saib.png'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4,
                  right: 35,
                  left: 35),
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
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        // Adjust the padding values as needed
                        child: buildRememberassword(),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    // Adjust the padding values as needed
                    child: ElevatedButton(
                      onPressed: () {
                        // Perform login logic here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                  const Text(
                    "Forgot Password",
                    style: TextStyle(
                        fontSize: 17.0,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Register Account",
                    style: TextStyle(
                        fontSize: 17.0,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(35.0),
                    // Adjust the padding values as needed
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icons/ic_aboutus.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(35.0),
                    // Adjust the padding values as needed
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icons/ic_locator.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(35.0),
                    // Adjust the padding values as needed
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icons/ic_phone.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
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

  Widget buildRememberassword() {
    return Container(
      height: 20,
      child: Row(
        children: [
          Theme(
              data: ThemeData(unselectedWidgetColor: Colors.white),
              child: Checkbox(
                value: false,
                checkColor: Colors.blueGrey,
                activeColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    // rememberpwd=value;
                  });
                },
              )),
          const Text(
            "Remember me",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
