import 'package:flutter/material.dart';
import 'package:flutter_project1/login_screen2.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen1 extends StatefulWidget {
  const LoginScreen1({super.key});

  @override
  State<LoginScreen1> createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(147, 155, 98, 1),
      body: Center(
        child: SingleChildScrollView(
          reverse: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 22,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(249, 240, 218, 1),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3))
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 35,
                    ),
                    //title
                    Text(
                      'WELCOME BACK!',
                      style: GoogleFonts.balooTamma2(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            const Shadow(
                                color: Color.fromRGBO(147, 155, 98, 0.3),
                                offset: Offset(2, 2),
                                blurRadius: 2)
                          ],
                          color: const Color.fromRGBO(147, 155, 98, 1)),
                    ),

                    Text(
                      'LOGIN',
                      style: GoogleFonts.balooTamma2(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            const Shadow(
                                color: Color.fromRGBO(147, 155, 98, 0.3),
                                offset: Offset(3, 3),
                                blurRadius: 0)
                          ],
                          color: const Color.fromRGBO(147, 155, 98, 1)),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    //login button
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: ((context) {
                          return const LoginScreen2();
                        })));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 45, vertical: 10),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 178, 107, 1),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Text(
                            'AS a donor',
                            style: GoogleFonts.balooTamma(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                          )),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 45, vertical: 10),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 178, 107, 1),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Text(
                            'As a restaurant',
                            style: GoogleFonts.balooTamma(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                          )),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New to the app? ',
                          style: GoogleFonts.balooTamma(fontSize: 16),
                        ),
                        GestureDetector(
                          child: Text(
                            'Sign up now',
                            style: GoogleFonts.balooTamma(
                                color: const Color.fromRGBO(255, 123, 84, 1),
                                fontSize: 16),
                          ),
                          onTap: () {},
                        )
                      ],
                    ),

                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              GestureDetector(
                child: Text(
                  "Need help?",
                  style: GoogleFonts.balooTamma(
                      color: const Color.fromRGBO(249, 240, 218, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                      shadows: [
                        const Shadow(
                            color: Color.fromRGBO(47, 51, 22, 0.498),
                            offset: Offset(3, 4),
                            blurRadius: 8)
                      ]),
                ),
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
