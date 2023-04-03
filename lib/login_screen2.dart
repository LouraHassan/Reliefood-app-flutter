import 'package:flutter/material.dart';
import 'package:flutter_project1/homepage_donor.dart';
import 'package:flutter_project1/signup_donor.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    username.text = ""; //innitail value of text field
    password.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(147, 155, 98, 1),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: const Color.fromRGBO(249, 240, 218, 1),
        ),
        elevation: 0,
      ),
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
                height: 20,
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
                        'LOG IN',
                        style: GoogleFonts.balooTamma2(
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                            color: const Color.fromRGBO(255, 178, 107, 1)),
                      ),

                      Text(
                        'as a donor',
                        style: GoogleFonts.balooTamma2(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 247, 140, 92)),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      //email
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 18),
                        child: TextField(
                          decoration: InputDecoration(
                              hintStyle: GoogleFonts.balooTamma2(
                                  color:
                                      const Color.fromRGBO(230, 149, 73, 0.6),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                              hintText: 'Email or username',
                              prefixIcon: const Icon(
                                Icons.people,
                                color: Color.fromRGBO(147, 155, 98, 0.7),
                              )),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      //password
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 18),
                        child: TextField(
                          decoration: InputDecoration(
                              hintStyle: GoogleFonts.balooTamma2(
                                  color:
                                      const Color.fromRGBO(230, 149, 73, 0.6),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                              hintText: 'Password',
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Color.fromRGBO(147, 155, 98, 0.7),
                              )),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //login button
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: ((context) {
                            return const HomePageDonor();
                          })));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 24),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 178, 107, 1),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Text(
                              'Log in',
                              style: GoogleFonts.balooTamma2(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            )),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      // text for sign up
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
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const SignUpDonor()));
                            },
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                    ]),
              ),
              const SizedBox(
                height: 40,
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
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
