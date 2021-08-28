import 'package:cloud_chat/Authenticate/Methods.dart';
import 'package:cloud_chat/components/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  children: [
                    Spacer(flex: 2),
                    Text(
                      "Cloud Chat",
                      style: GoogleFonts.roboto(
                          fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Messaging App",
                      style: GoogleFonts.roboto(fontSize: 15),
                    ),
                    Spacer(),
                    PrimaryButton(
                      text: "Sign In with Google",
                      icons: FontAwesomeIcons.google,
                      press: () => signInWithGoogle(context),
                    ),
                    Spacer(flex: 2),
                  ],
                ),
              ),
            ),
    );

//     return Scaffold(
//       body: isLoading
//           ? Center(
//               child: Container(
//                 height: size.height / 20,
//                 width: size.height / 20,
//                 child: CircularProgressIndicator(),
//               ),
//             )
//           : SingleChildScrollView(
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: size.height / 20,
//                   ),
//                   Container(
//                     alignment: Alignment.centerLeft,
//                     width: size.width / 0.5,
//                     child: IconButton(
//                         icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
//                   ),
//                   SizedBox(
//                     height: size.height / 50,
//                   ),
//                   Container(
//                     width: size.width / 1.1,
//                     child: Text(
//                       "Welcome",
//                       style: TextStyle(
//                         fontSize: 34,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     width: size.width / 1.1,
//                     child: Text(
//                       "Sign In to Contiue!",
//                       style: TextStyle(
//                         color: Colors.grey[700],
//                         fontSize: 25,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: size.height / 10,
//                   ),
//                   Container(
//                     width: size.width,
//                     alignment: Alignment.center,
//                     child: field(size, "email", Icons.account_box, _email),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 18.0),
//                     child: Container(
//                       width: size.width,
//                       alignment: Alignment.center,
//                       child: field(size, "password", Icons.lock, _password),
//                     ),
//                   ),
//                   SizedBox(
//                     height: size.height / 10,
//                   ),
//                   customButton(size),
//                   SizedBox(
//                     height: size.height / 40,
//                   ),
//                   GestureDetector(
//                     onTap: () => signInWithGoogle(context),
//                     child: Container(
//                         height: size.height / 14,
//                         width: size.width / 1.2,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(5),
//                           color: Colors.blue,
//                         ),
//                         alignment: Alignment.center,
//                         child: Text(
//                           "Login with Google",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         )),
//                   ),
//                   SizedBox(
//                     height: size.height / 40,
//                   ),
//                   GestureDetector(
//                     onTap: () => Navigator.of(context).push(
//                         MaterialPageRoute(builder: (_) => CreateAccount())),
//                     child: Text(
//                       "Create Account",
//                       style: TextStyle(
//                         color: Colors.blue,
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//     );
//   }

//   Widget customButton(Size size) {
//     return GestureDetector(
//       onTap: () {
//         if (_email.text.isNotEmpty && _password.text.isNotEmpty) {
//           setState(() {
//             isLoading = true;
//           });

//           logIn(_email.text, _password.text).then((user) {
//             if (user != null) {
//               print("Login Sucessfull");
//               setState(() {
//                 isLoading = false;
//               });
//               Navigator.push(
//                   context, MaterialPageRoute(builder: (_) => HomeScreen()));
//             } else {
//               print("Login Failed");
//               setState(() {
//                 isLoading = false;
//               });
//             }
//           });
//         } else {
//           print("Please fill form correctly");
//         }
//       },
//       child: Container(
//           height: size.height / 14,
//           width: size.width / 1.2,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             color: Colors.blue,
//           ),
//           alignment: Alignment.center,
//           child: Text(
//             "Login",
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           )),
//     );
//   }

//   Widget field(
//       Size size, String hintText, IconData icon, TextEditingController cont) {
//     return Container(
//       height: size.height / 14,
//       width: size.width / 1.1,
//       child: TextField(
//         controller: cont,
//         decoration: InputDecoration(
//           prefixIcon: Icon(icon),
//           hintText: hintText,
//           hintStyle: TextStyle(color: Colors.grey),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//           ),
//         ),
//       ),
//     );
  }
}
