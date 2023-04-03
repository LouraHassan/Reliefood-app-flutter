import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homepage_donor.dart';

class SignUpDonor extends StatefulWidget {
  const SignUpDonor({super.key});

  @override
  State<SignUpDonor> createState() => _SignUpDonorState();
}

class _SignUpDonorState extends State<SignUpDonor> {
  bool isChecked = false;

  String? selectedValue;
  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        centerTitle: true,
        title: Text(
          "SIGN UP",
          style: GoogleFonts.balooTamma2(
              color: const Color.fromRGBO(255, 178, 107, 1),
              fontSize: 50,
              fontWeight: FontWeight.w900),
        ),
        backgroundColor: const Color.fromRGBO(249, 240, 218, 1),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: const Color.fromRGBO(147, 155, 98, 1),
            iconSize: 35,
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(249, 240, 218, 1),
      body: Center(
        child: SingleChildScrollView(
            reverse: true,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Text(
                  "as a donor",
                  style: GoogleFonts.balooTamma2(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(204, 247, 127, 91)),
                ),
                //email
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.balooTamma2(
                          color: const Color.fromRGBO(255, 178, 107, 0.6),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                      hintText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                //username
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.balooTamma2(
                          color: const Color.fromRGBO(255, 178, 107, 0.6),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                      hintText: 'Username',
                    ),
                  ),
                ),
                //phone number
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.balooTamma2(
                          color: const Color.fromRGBO(255, 178, 107, 0.6),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                      hintText: 'Phone number',
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),
                //password
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.balooTamma2(
                          color: const Color.fromRGBO(255, 178, 107, 0.6),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                      hintText: 'Password',
                    ),
                    obscureText: true,
                  ),
                ),
                //password confirmation
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.balooTamma2(
                          color: const Color.fromRGBO(255, 178, 107, 0.6),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                      hintText: 'Confirm password',
                    ),
                    obscureText: true,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: DropdownButtonFormField(
                      hint: Text(
                        "Region",
                        style: GoogleFonts.balooTamma2(
                            fontSize: 20,
                            color: const Color.fromRGBO(255, 178, 107, 0.6),
                            fontWeight: FontWeight.w600),
                      ),
                      items: items
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ))
                          .toList(),
                      value: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value as String;
                        });
                      },
                      iconEnabledColor: const Color.fromRGBO(147, 155, 98, 1),
                      style: GoogleFonts.balooTamma2(
                          color: const Color.fromRGBO(255, 123, 84, 0.6),
                          fontSize: 20,
                          fontWeight: FontWeight.w600)),
                ),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 11),
                  child: Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (val) {
                          setState(() {
                            isChecked = val!;
                          });
                        },
                        activeColor: const Color.fromRGBO(147, 155, 98, 1),
                      ),
                      Text(
                        "Accept terms",
                        style: GoogleFonts.balooTamma2(
                            color: const Color.fromRGBO(255, 178, 107, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: ((context) {
                      return const HomePageDonor();
                    })));
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(147, 155, 98, 1),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                        'Sign up',
                        style: GoogleFonts.balooTamma2(
                            fontSize: 22,
                            color: const Color.fromRGBO(249, 240, 218, 1),
                            fontWeight: FontWeight.w700),
                      )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                )
              ],
            )),
      ),
    );
  }
}
