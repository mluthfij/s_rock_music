import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF18171C),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(20),
        child: AppBar(
          backgroundColor: const Color(0xFFA90140),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: const BoxDecoration(
                        color: Color(0xFFA90140)
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 48,
                              decoration: BoxDecoration(
                                color: const Color(0xFF2F2F39),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: const Row(
                                children: [
                                  Icon(Icons.search, color: Colors.white70),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Search "Punjabi Lyrics"',
                                        hintStyle: TextStyle(color: Color(0xFF61616B)),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.mic, color: Colors.white70),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.purple.shade100,
                            child: const Icon(Icons.person_2_outlined, color: Colors.deepPurple),
                          ),
                        ],
                      ),
                    ),
                  ),
                    Stack(
                    children: [
                      Container(
                      height: 300,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFA90140),
                          Color(0xFF6E0026),
                        ],
                        ),
                        borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text(
                          'Claim your',
                          style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Free Demo',
                          style: GoogleFonts.pacifico(
                          fontSize: 45,
                          color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'for custom Music Production',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          ),
                          onPressed: () {},
                          child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Text('Book Now', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        ],
                      ),
                      ),
                      Positioned(
                      bottom: 10,
                      left: -40,
                      child: Image.asset(
                        'assets/icon-1.png',
                        width: 130,
                      ),
                      ),
                      Positioned(
                      bottom: 10,
                      right: -45,
                      child: Image.asset(
                        'assets/icon-2.png',
                        width: 130,
                      ),
                      ),
                    ],
                    ),
                  const SizedBox(
                    height: 80,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            'Hire hand-picked Pros for popular music services',
                            style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'Syne'),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Card(
                      color: const Color.fromARGB(0, 0, 0, 0),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              leading: Image.asset('assets/icon-7.png', width: 50, height: 50),
                              title: const Text('Music Production', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                              subtitle: const Text('Custom instrumentals & film scoring', style: TextStyle(color: Colors.white, fontSize: 12)),
                              trailing: const Icon(Icons.play_arrow, color: Colors.white, size: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Card(
                      color: const Color.fromARGB(0, 0, 0, 0),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              leading: Image.asset('assets/icon-8.png', width: 50, height: 50),
                              title: const Text('Mixing & Mastering', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                              subtitle: const Text('Make your tracks Radio-ready', style: TextStyle(color: Colors.white, fontSize: 12)),
                              trailing: const Icon(Icons.play_arrow, color: Colors.white, size: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Card(
                      color: const Color.fromARGB(0, 0, 0, 0),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              leading: Image.asset('assets/icon-9.png', width: 50, height: 50),
                              title: const Text('Lyrics Writing', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                              subtitle: const Text('Turn feelings into lyrics', style: TextStyle(color: Colors.white, fontSize: 12)),
                              trailing: const Icon(Icons.play_arrow, color: Colors.white, size: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Card(
                      color: const Color.fromARGB(0, 0, 0, 0),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              leading: Image.asset('assets/icon-10.png', width: 50, height: 50),
                              title: const Text('Vocals', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                              subtitle: const Text('Vocals that brings your lyrics to life', style: TextStyle(color: Colors.white, fontSize: 12)),
                              trailing: const Icon(Icons.play_arrow, color: Colors.white, size: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: ClipRect(
        child: BottomAppBar(
          color: const Color(0xFF18171C),
          child: Builder(
            builder: (context) {
              final bottomPadding = MediaQuery.of(context).padding.bottom;

              return Container(
                padding: EdgeInsets.only(top: 4, bottom: bottomPadding + 8),
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  border: Border(
                    top: BorderSide(color: Colors.white, width: 0.35),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildNavItem('assets/icon-3.png', 'Home'),
                    _buildNavItem('assets/icon-4.png', 'News'),
                    _buildNavItem('assets/icon-5.png', 'TrackBox'),
                    _buildNavItem('assets/icon-6.png', 'Projects'),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(String assetPath, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(assetPath, width: 24.65),
        const SizedBox(height: 2),
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 12)),
      ],
    );
  }
}
