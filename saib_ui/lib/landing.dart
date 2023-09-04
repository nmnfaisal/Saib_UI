import 'package:flutter/material.dart';

class MyLanding extends StatefulWidget {
  const MyLanding({super.key});

  @override
  State<MyLanding> createState() => _MyLandingState();
}

// class _MyLandingState extends State<MyLanding> {
//   @override
//   Widget build(BuildContext context) {
//     Build_Jahaaz();
//
//
//     return Container();
//   }
//
//
//
//   Widget Build_Jahaaz() {
//     return SizedBox(
//       height: 20,
//       child: Row(
//         children: [
//           Theme(
//               data: ThemeData(unselectedWidgetColor: Colors.white),
//               child: Container(
//                 height: 130.0,
//                 width: double.infinity, // Code to assign full width
//                 decoration: const BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage('assets/line.png'), fit: BoxFit.fill),
//                   shape: BoxShape.rectangle,
//                 ),
//               ),
//           ),
//         ],
//       ),
//     );
//   }
// }
class _MyLandingState extends State<MyLanding> {
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
              top: MediaQuery.of(context).size.height / 4 -
                  100, // Center vertically
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
            // Positioned(
            //     child: iconsBar()
            // ),
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4,
                  right: 35,
                  left: 35),
              child: Column(
                children: [
                  const Text(
                    "Welcome Habibi...",
                    style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),

                  iconsBar(),

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
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      ),
                      child: const Text(
                        '      Login     ',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(0.0),
                    // Adjust the padding values as needed
                    child: ElevatedButton(
                      onPressed: () {
                        // Perform Register logic here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      ),
                      child: const Text(
                        '   Register   ',
                        style: TextStyle(fontSize: 18, color: Colors.black),
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

  Widget iconsBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
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
          padding: const EdgeInsets.all(20.0),
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
          padding: const EdgeInsets.all(20.0),
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
    );
  }

  Widget costomiseButton(buttonText, backGroundColor) {
    return SizedBox(
      height: 20,
      child: ElevatedButton(
        onPressed: () {
          // Perform login logic here
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        ),
        child: const Text(
          'Login',
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}
