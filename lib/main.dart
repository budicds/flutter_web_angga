import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Website Sederhana',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LandingPage());
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget navItem({required String title, required int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: index == selectedIndex
                      ? FontWeight.w500
                      : FontWeight.w300,
                  color: Color(0xff1D1E3C)),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: index == selectedIndex
                      ? Color(0xffFE998D)
                      : Colors.transparent),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(children: [
        Image.asset(
          'assets/images/landingpage.png',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 100,
            vertical: 30,
          ),
          child: Column(
            children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/vector.png',
                      height: 40,
                      width: 72,
                    ),
                    Row(
                      children: [
                        navItem(title: 'Guides', index: 0),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(title: 'Pricing', index: 1),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(title: 'Team', index: 2),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(title: 'Stories', index: 3),
                      ],
                    ),
                    Image.asset(
                      'assets/images/btnmyaccnt.png',
                      height: 53,
                      width: 163,
                    ),
                  ]),
              SizedBox(height: 76),
              //gambar body utama

              Center(
                child: selectedIndex == 0 ? 

                    Image.asset(
                      'assets/images/ilustrasi.png',
                      height: 550,
                      width: 763,
                    )
                    
                    :

                    selectedIndex == 1 ?
                    Image.asset(
                      'assets/images/vector.png',
                      height: 550,
                      width: 763,
                    )
                    :
                    selectedIndex == 2 ?
                    Image.asset(
                      'assets/images/bean.jpg',
                      height: 550,
                      width: 763,
                    )
                    :
                    Image.asset(
                      'assets/images/bean2.jpg',
                      height: 550,
                      width: 763,
                    )


              ),

              SizedBox(height: 84),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Icon_down_solid.png',
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Text(
                    'Scroll to Learn More',
                    style: GoogleFonts.poppins(fontSize: 20),
                  )
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}// class landing page
