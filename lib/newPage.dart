import 'package:flutter/material.dart';
import 'package:instagarm_clone/addPost.dart';
import 'package:instagarm_clone/home.dart';
import 'package:instagarm_clone/profile.dart';


class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {

  int _currentIndex=0;
  final tabs=[
    Home(),
    //Center(child: Text('home')),
    Center(child: Text('search')),
    Center(child: Text('reels')),
    AddPost(),
    Profile()
    //Center(child: Text('profile')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        items: [
          BottomNavigationBarItem(icon :  Icon(Icons.home), label: "Home",
            backgroundColor: Colors.black, ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded),label: "reels" ,
              backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.movie_filter_outlined), label: "add",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "profile",
              backgroundColor: Colors.black),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex= index;
          });
        },
      ),
    );
  }
}