import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';
import 'package:flutter_gradient_animation_text/flutter_gradient_animation_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        primarySwatch: Colors.blue,
        canvasColor: const Color.fromARGB(255, 232, 232, 232),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List names = [
    "WEBSITE DESIGN",
    "WEB DEVELOPMENT",
    "MOBILE APP DEVELOPMENT",
    "BLOCKCHAIN DEVELOPER",
    "BACKEND DEVELOPER",
    "FULLSTACK DEVELOPER",
  ];

  final Color navigationBarColor = Colors.white54;
  int selectedIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    /// [AnnotatedRegion<SystemUiOverlayStyle>] only for android black navigation bar. 3 button navigation control (legacy)

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: navigationBarColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: const Color(0xFFf2f0f0),
        body: PageView(
          // physics: BouncingScrollPhysics(),
          controller: pageController,
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 80.0, left: 60.0),
                      child: Image.asset("images/page1/background2.png", width: 250),
                    ),

                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset("images/page1/background.png", width: 350),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 90.0),
                      child: Image.asset("images/page1/ellipse.png", width: 350),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 100.0, left: 20.0),
                      child: Image.asset("images/page1/hero.png", width: 600),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 40.0, left: 10.0),
                  child: Column(
                    children: [
                      Align(
                      alignment: Alignment.topLeft,
                         child: GradientAnimationText(
                           text: Text(
                         "We Help You",
                         style: GoogleFonts.poppins(fontSize: 50.0, fontWeight: FontWeight.w800),
                       ),
                             colors: const [
                             Colors.grey,
                             Colors.black26,
                             ],
                           duration: const Duration(seconds: 5),
                           reverse: true,
                       ),
                      ),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("to grow your  \nbusiness", style: GoogleFonts.poppins(fontSize: 50.0, fontWeight: FontWeight.w300),),
                  ),
                      Container(
                        color: Colors.amber,
                        width: 300.0,
                        height: 10.0,
                      ),
                    ],
                  ),
                ),


                 const SizedBox(height: 20.0,),

                 Align(
                   alignment: Alignment.topRight,
                   child: Container(
                     color: Colors.black12,
                     width: 300.0,
                     height: 10.0,
                   ),
                 ),

                const SizedBox(height: 30.0,),

                 Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Lorem Ipsum has been the industry's standard dummy text ever n\ "
                      "since the 1500s, when an unknown printer took a galley of type and n\ "
                      "scrambled it to make a type specimen book.",
                    style: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w200),
                  ),
                ),


                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0, bottom: 50.0, top: 30.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        fixedSize: const Size(150, 50),
                        elevation: 7,
                        shadowColor: Colors.black,
                      ),
                      child: const Text(
                        "GET STARTED",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                )

                ],
              ),
            ),

            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: 200,
                    height: 800,
                    decoration: const BoxDecoration(
                      color: Color(0xFFECF7FF),
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(500.0)),
                    ),
                  ),

                  Column(
                    children: [
                      SafeArea(
                        child: Column(
                          children: [
                            Text("What We Do",
                              style: GoogleFonts.poppins(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.grey
                              ),),

                            Text("For Your Business",
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w300, fontSize: 30.0),
                            ),

                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 300.0,
                                height: 10.0,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 10.0,),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: 300.0,
                                height: 10.0,
                                color: Colors.black54,
                              ),
                            ),

                            const SizedBox(height: 10.0,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 400.0,
                                height: 10.0,
                                decoration: const BoxDecoration(
                                  color: Colors.amber,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey, // Warna bayangan
                                      blurRadius: 5.0,   // Jumlah blur
                                      spreadRadius: 2.0,  // Seberapa jauh bayangan menyebar
                                      offset: Offset(0, 3), // Posisi bayangan (x, y)
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                  Expanded(
                    child: ListView.builder(
                      itemCount: names.length,
                      itemBuilder: (context, index) {
                        final number = index + 1;
                        final name = names[index].toString();
                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Card(
                            elevation: 8.0,
                            color: const Color(0xFFfceedc),
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset('images/page2/_$number.png'),
                                  TextButton(
                                    child: Text(names[index],
                                      style: const TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    onPressed: (){},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  ],
                 )
                ],
              ),
            ),

            SingleChildScrollView(
              child: Column(
               children: [
                 Stack(
                       children:[

                         Padding(
                           padding: const EdgeInsets.only(top: 110.0, left: 40.0),
                           child: Image.asset("images/page3/ellipse3.png", width: 300.0,),
                         ),

                         Padding(
                           padding: const EdgeInsets.only(top: 110.0, left: 50.0),
                           child: Image.asset("images/page3/bg3.png", width: 320.0,),
                         ),

                         Padding(
                           padding: const EdgeInsets.only(top: 8.0, left: 23.0),
                           child: Image.asset("images/page3/hero3.png", width: 700.0,),
                         ),
                       ],
                     ),

                 Align(
                   alignment: Alignment.topLeft,
                   child: Container(
                     width: 300,
                     height: 10,
                     color: Colors.white,
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 50.0, bottom: 18.0, top: 10.0),
                   child: Container(
                     width: 300,
                     height: 10,
                     color: Colors.amber,
                   ),
                 ),
                 Container(
                   width: 300,
                   height: 10,
                   color: Colors.grey,
                 ),

                 Align(
                   alignment: Alignment.topLeft,
                   child: Padding(
                     padding: const EdgeInsets.only(left: 20.0,),
                     child: Column(
                       children: [
                         Padding(
                           padding: EdgeInsets.only(top: 15.0),
                           child: Align(
                             alignment: Alignment.topLeft,
                             child: Text("About Us",
                               style: GoogleFonts.poppins(
                                 fontWeight: FontWeight.w800,
                                 fontSize: 50,
                                 height: 1.0,
                               ),),
                           ),
                         ),
                         Align(
                           alignment: Alignment.topLeft,
                           child: Text("Fake or Real",
                           style: GoogleFonts.poppins(
                             fontSize: 50,
                             fontWeight: FontWeight.w300
                             // height: 1.0,

                           ),),
                         ),
                         Align(
                           alignment: Alignment.topLeft,
                           child: Padding(
                             padding: EdgeInsets.only(top: 30.0, bottom: 20.0),
                             child: Text("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                             style:
                               GoogleFonts.poppins(
                                 fontSize: 16.0,
                                 fontWeight: FontWeight.w300,
                                 color: Colors.black54
                               ),),
                           ),
                         ),
                         Align(
                             alignment: Alignment.topLeft,
                             child: Text("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                               style:
                               GoogleFonts.poppins(
                                   fontSize: 16.0,
                                   fontWeight: FontWeight.w300,
                                   color: Colors.black54
                               ),),),
                         Padding(
                           padding: const EdgeInsets.only(top: 20.0, bottom: 50.0),
                           child: Align(
                             alignment: Alignment.topLeft,
                             child: ElevatedButton(
                                 onPressed: (){},
                                 style: ElevatedButton.styleFrom(
                                   backgroundColor: Colors.amber,
                                   fixedSize: const Size(200, 50),
                                   elevation: 7,
                                   shadowColor: Colors.black,
                                 ),
                                 child: const Text("EXPLORE MORE",
                                 style: TextStyle(
                                   color: Colors.black54,

                                 ),)),
                           ),
                         )
                       ],
                     ),
                   ),
                 )

               ],
              ),
            ),

            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: 200,
                    height: 800,
                    decoration: const BoxDecoration(
                      color: Color(0xFFECF7FF),
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(500.0)),
                    ),
                  ),

                   Column(
                    children: [
                      SafeArea(
                        child: Column(
                          children: [
                            Text("Contact Us",
                            style: GoogleFonts.poppins(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey
                            ),),

                            Text("any questions or remarks? just write us a message!",
                            style: GoogleFonts.poppins(fontWeight: FontWeight.w300, fontSize: 14.0),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 50.0,),

                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 45.0, ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'FullName',
                            labelText: 'name',
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 25.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'example@gmail.com',
                            labelText: 'Email',
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 45.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '+62 842-4255-2424',
                            labelText: 'Phone Number',
                          ),
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.only(top: 45.0, right: 35.0, left: 35.0, bottom: 30.0),
                        child: TextField(
                          maxLines: null,
                          decoration: InputDecoration(
                            labelText: 'Send us a message',
                            hintText: 'Message',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),

                      ElevatedButton(
                          onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFd1d1d1),
                          fixedSize: const Size(250, 50),
                          elevation: 7,
                          shadowColor: Colors.black,
                        ),
                          child:
                          Text("SEND",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),
                      )
                    ],
                  )

                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: WaterDropNavBar(
          backgroundColor: navigationBarColor,
          onItemSelected: (int index) {
            setState(() {
              selectedIndex = index;
            });
            pageController.animateToPage(selectedIndex,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOutQuad);
          },
          selectedIndex: selectedIndex,
          barItems: <BarItem>[
            BarItem(
              filledIcon: Icons.home_rounded,
              outlinedIcon: Icons.home_outlined,
            ),
            BarItem(
                filledIcon: Icons.groups_rounded,
                outlinedIcon: Icons.groups_outlined
            ),
            BarItem(
              filledIcon: Icons.settings_rounded,
              outlinedIcon: Icons.settings_outlined,
            ),
            BarItem(
              filledIcon: Icons.contacts_rounded,
              outlinedIcon: Icons.contacts_outlined,
            ),
          ],
        ),
      ),
    );
  }
}

