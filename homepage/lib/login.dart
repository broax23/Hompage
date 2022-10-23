import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepage/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfefae0),
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Icon(
              Icons.account_circle,
              size: 100,
            ),

            const SizedBox(
              height: 75,
            ),
            //hello again
            Text('LEDDIT',
                style: GoogleFonts.bebasNeue(
                  fontSize: 52,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 10),
            const Text(
              'Welcome Back!',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 50),

            //username textfield

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'User',
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 15,
            ),

            //password textfield

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15),
            //sign in button

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Homepage()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xFF606c38)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
                  minimumSize:
                      MaterialStateProperty.all<Size>(const Size(350, 55)),
                ),
                child: const Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15),
            // InkWell(
            //   child: Container(
            //     margin: const EdgeInsets.symmetric(horizontal: 25.0),
            //     padding: const EdgeInsets.all(20),
            //     decoration: BoxDecoration(
            //         color: const Color(0xFF606c38),
            //         //border: Border.all(color: Colors.white),
            //         borderRadius: BorderRadius.circular(25)),
            //     child: const Center(
            //       child: Text(
            //         'Sign In',
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontWeight: FontWeight.bold,
            //           fontSize: 18,
            //         ),
            //       ),
            //     ),
            //   ),
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => const SecondPage()),
            //     );
            //   },
            // ),

            const SizedBox(height: 25),
            //register button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Not a member?'),
                Text(
                  ' Register Now',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
