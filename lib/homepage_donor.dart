import 'package:flutter/material.dart';
import 'package:flutter_project1/login_screen1.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageDonor extends StatefulWidget {
  const HomePageDonor({super.key});

  @override
  State<HomePageDonor> createState() => _HomePageDonorState();
}

class _HomePageDonorState extends State<HomePageDonor> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final pages = [
    Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(147, 155, 98, 1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 140,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Charities",
                            style: GoogleFonts.balooTamma2(
                                color: const Color.fromRGBO(249, 240, 218, 1),
                                fontSize: 28,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 140,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color.fromRGBO(249, 240, 218, 1),
                        size: 35,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 178, 107, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        "Personal",
                        style: GoogleFonts.balooTamma2(
                            color: const Color.fromRGBO(249, 240, 218, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        "donation",
                        style: GoogleFonts.balooTamma2(
                            color: const Color.fromRGBO(249, 240, 218, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 178, 107, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        "Donation",
                        style: GoogleFonts.balooTamma2(
                            color: const Color.fromRGBO(249, 240, 218, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "from a",
                        style: GoogleFonts.balooTamma2(
                            color: const Color.fromRGBO(249, 240, 218, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "restaurant",
                        style: GoogleFonts.balooTamma2(
                            color: const Color.fromRGBO(249, 240, 218, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
    //profile page
    Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Badges",
                  style: GoogleFonts.balooTamma2(
                      color: const Color.fromRGBO(147, 155, 98, 1),
                      fontSize: 26,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            const SizedBox(
              width: 124,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  "show more",
                  style: GoogleFonts.balooTamma2(
                      color: const Color.fromRGBO(147, 155, 98, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            GestureDetector(
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Color.fromRGBO(147, 155, 98, 1),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            width: 355,
            height: 135,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(147, 155, 98, 1),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: const ShapeDecoration(
                      shape: CircleBorder(),
                      color: Color.fromRGBO(217, 217, 217, 1)),
                ),
                const SizedBox(
                  width: 22,
                ),
                Container(
                  width: 90,
                  height: 90,
                  decoration: const ShapeDecoration(
                      shape: CircleBorder(),
                      color: Color.fromRGBO(217, 217, 217, 1)),
                ),
                const SizedBox(
                  width: 22,
                ),
                Container(
                  width: 90,
                  height: 90,
                  decoration: const ShapeDecoration(
                      shape: CircleBorder(),
                      color: Color.fromRGBO(217, 217, 217, 1)),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Profile",
              style: GoogleFonts.balooTamma2(
                  color: const Color.fromRGBO(255, 178, 107, 1),
                  fontSize: 26,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Container(
          width: 355,
          height: 200,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 178, 107, 1),
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.account_circle,
                    size: 105,
                    color: Color.fromRGBO(249, 240, 218, 1),
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Usernme",
                        style: GoogleFonts.balooTamma2(
                            color: const Color.fromRGBO(147, 155, 98, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 95,
                      )
                    ],
                  ),
                  Container(
                      width: 150,
                      height: 0.8,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(147, 155, 98, 1))),
                  Row(
                    children: [
                      Text(
                        "user name",
                        style: GoogleFonts.balooTamma2(
                            color: const Color.fromRGBO(249, 240, 218, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        width: 55,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Email",
                        style: GoogleFonts.balooTamma2(
                            color: const Color.fromRGBO(147, 155, 98, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 112,
                      )
                    ],
                  ),
                  Container(
                      width: 150,
                      height: 0.8,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(147, 155, 98, 1))),
                  Row(
                    children: [
                      Text(
                        "user@gmail.com",
                        style: GoogleFonts.balooTamma2(
                            color: const Color.fromRGBO(249, 240, 218, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        width: 6,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Phone number",
                        style: GoogleFonts.balooTamma2(
                            color: const Color.fromRGBO(147, 155, 98, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 68,
                      )
                    ],
                  ),
                  Container(
                      width: 150,
                      height: 0.8,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(147, 155, 98, 1))),
                  Row(
                    children: [
                      Text(
                        "0555555555",
                        style: GoogleFonts.balooTamma2(
                            color: const Color.fromRGBO(249, 240, 218, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        width: 45,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Container(
                width: 140,
                height: 48,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(147, 155, 98, 1),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12),
                      child: Text(
                        "Points",
                        style: GoogleFonts.balooTamma2(
                            color: const Color.fromRGBO(255, 178, 107, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Text(
                      "594",
                      style: GoogleFonts.balooTamma2(
                          color: const Color.fromRGBO(249, 240, 218, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //***Appbar
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Name",
              style: GoogleFonts.balooTamma2(
                  color: const Color.fromRGBO(249, 240, 218, 1),
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
          ),
          backgroundColor: const Color.fromRGBO(255, 178, 107, 1),
          toolbarHeight: 80,
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Color.fromRGBO(249, 240, 218, 1),
            size: 30,
          ),
        ),
        backgroundColor: const Color.fromRGBO(249, 240, 218, 1),
        //***Navigation bar
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromRGBO(255, 178, 107, 1),
          iconSize: 39,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: const Color.fromRGBO(147, 155, 98, 1),
          unselectedItemColor: const Color.fromRGBO(249, 240, 218, 1),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        //***FloatingActionButton
        floatingActionButton: SizedBox(
          height: 100,
          width: 75,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color.fromRGBO(147, 155, 98, 1),
            elevation: 5,
            shape: const CircleBorder(),
            child: const Icon(
              Icons.add,
              color: Color.fromRGBO(249, 240, 218, 1),
              size: 40,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        //***Drawer
        drawer: Drawer(
          width: 235,
          backgroundColor: const Color.fromRGBO(255, 178, 107, 1),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                height: 60,
                child: Row(
                  children: const [
                    SizedBox(
                      width: 185,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 30,
                      color: Color.fromRGBO(249, 240, 218, 1),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Color.fromRGBO(249, 240, 218, 1),
                  size: 30,
                ),
                title: Text(
                  "Settings",
                  style: GoogleFonts.balooTamma2(
                      color: const Color.fromRGBO(249, 240, 218, 1),
                      fontSize: 28,
                      fontWeight: FontWeight.w700),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.phone,
                  color: Color.fromRGBO(249, 240, 218, 1),
                  size: 30,
                ),
                title: Text(
                  "Contact us",
                  style: GoogleFonts.balooTamma2(
                      color: const Color.fromRGBO(249, 240, 218, 1),
                      fontSize: 28,
                      fontWeight: FontWeight.w700),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.exit_to_app,
                  color: Color.fromRGBO(249, 240, 218, 1),
                  size: 30,
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return const LoginScreen1();
                  })));
                },
                title: Text(
                  "Sign out",
                  style: GoogleFonts.balooTamma2(
                      color: const Color.fromRGBO(249, 240, 218, 1),
                      fontSize: 28,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
        //***Body
        body: pages[_selectedIndex]);
  }
}
