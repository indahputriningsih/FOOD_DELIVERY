import 'package:flutter/material.dart';
import 'package:food_delivery/components/button.dart';
import 'package:food_delivery/components/squar_tile.dart';
import 'package:food_delivery/components/textField.dart';
import 'package:food_delivery/pages/login_page.dart';

class signUpPages extends StatelessWidget {
  signUpPages({super.key});

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

                //welcome back
                const Text(
                  'Selamat Datang',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Lanjutkan untuk Masuk',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return LoginPage();
                          }),
                        );
                      },
                      child: const Text(
                        "masuk",
                        style: TextStyle(color: Color(0xFFEF9F27)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                MyTextField(
                  controller: usernameController,
                  hintText: 'Yourname',
                  obscuretext: false,
                ),
                const SizedBox(
                  height: 5,
                ),

                //username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscuretext: false,
                ),

                const SizedBox(
                  height: 5,
                ),
                //password texfield

                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscuretext: true,
                ),

                const SizedBox(height: 5),
                //sig in
                MyButton(
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return LoginPage();
                      }),
                    );
                  },
                  nameBtn: "Sign Up",
                ),

                const SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Forgot Password ?',
                        style: TextStyle(
                          color: Color(0xFFEF9F27),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
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
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
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
                const SizedBox(height: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
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
