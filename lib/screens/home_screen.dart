import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ig_clone/screens/profile/edit_profile_screen.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset("assets/images/instagram.svg"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: <Widget>[
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            //child: const Text('Page 1'),
          ),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            //child: const Text('Page 2'),
          ),

          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: const EditProfileScreen(),
         
          ),


          Container(
            color: Colors.white,
            alignment: Alignment.center,
            //child: const Text('Page 4'),
          ),
        ][currentPageIndex],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.add),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}
