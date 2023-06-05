import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_delivery/components/button.dart';
import 'package:food_delivery/components/squar_tile.dart';
import 'package:food_delivery/components/textField.dart';
import 'package:food_delivery/menu.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

//edit text
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
//sign in
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/Logo.png",
                  height: 250,
                  width: 250,
                ),

                //logo
                SizedBox(height: 5),
                //welcome back
                Text(
                  'Selamat Datang',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                Text(
                  'Hallo Indah, Lanjutkan untuk Masuk',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),

                //username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscuretext: false,
                ),

                SizedBox(
                  height: 10,
                ),
                //password texfield

                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscuretext: true,
                ),

                SizedBox(height: 10),
                //sig in
                MyButton(
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return menu();
                      }),
                    );
                  },
                  nameBtn: "Sign In",
                ),

                SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Forgot Password ?',
                        style: TextStyle(
                          color: Color(0xFFEF9F27),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                //OR
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 3,
                          color: Colors.grey[90],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Text(
                          'OR',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 3,
                          color: Colors.grey[90],
                        ),
                      ),
                    ],
                  ),
                ),

                //GOOGLE DAN FACEBOOK
                SizedBox(height: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SquareTile(
                        Imagepath: 'assets/images/Google - Logo.png',
                        Connect: 'Connect With Google'),
                    SizedBox(height: 10),
                    SquareTile(
                        Imagepath: 'assets/images/Facebook - Logo.png',
                        Connect: 'Connect With Facebook'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
