import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:stockfm/pages/about.dart';
import 'package:stockfm/pages/home.dart';
import 'package:stockfm/pages/homepage.dart';
import 'package:stockfm/pages/like.dart';
import 'package:stockfm/pages/profile.dart';
import 'package:stockfm/pages/search.dart';

class navbar extends StatefulWidget {
  int currentIndex = 1;
  List pages = [searchPage(), homePage(), likePage()];

  @override
  State<navbar> createState() => _NavbarState();
}

class _NavbarState extends State<navbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(255, 11, 24, 52),
          toolbarHeight: 70,
          elevation: 10,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => aboutUS()));
                },
                child: Ink.image(
                    width: 100,
                    height: 40,
                    image: AssetImage('assets/images/LogoWhite.png')),
              ),
              ElevatedButton(
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => profile()));
                  }),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), elevation: 0),
                  child: const CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage('assets/images/Profile.jpg'),
                  )),
            ],
          )),
      body: widget.pages[widget.currentIndex],
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 11, 24, 52),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: GNav(
            selectedIndex: 1,
            backgroundColor: Color.fromARGB(255, 11, 24, 52),
            gap: 8,
            iconSize: 24,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color(0xffD6802B),
            padding: EdgeInsets.all(16),
            onTabChange: (index) {
              setState(() {
                widget.currentIndex = index;
              });
            },
            tabs: const [
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Wishlist',
              )
            ],
          ),
        ),
      ),
    );
  }
}
