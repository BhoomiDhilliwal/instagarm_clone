import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final List<String> contents = [
    'Setting and privacy',
    'Threads',
    'Your activity',
    'Archive',
    'QR code',
    'Saved',
    'Supervision',
    'Close Friends',
    'Favorites',
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("User_name"),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.add_box_rounded)),
            PopupMenuButton(itemBuilder: (context){
              return contents.map((e) => PopupMenuItem<String>(value: e,child: Text(e))).toList();
            },onSelected: (value){
              switch(value){
                case 'Setting and privacy':print("Setting and privacy");
              //Navigator.
              }
              switch(value){
                case 'Threads':print("Threads");
              //Navigator.
              }
              switch(value){
                case 'Your activity':print("Your activity");
              //Navigator.
              }
              switch(value){
                case 'Archive':print("Archive");
              //Navigator.
              }
              switch(value){
                case 'QR code':print("QR code");
              //Navigator.
              }
              switch(value){
                case 'Saved':print("Saved");
              //Navigator.
              }
              switch(value){
                case 'Supervision':print("Supervision");
              //Navigator.
              }
              switch(value){
                case 'Close Friends':print("Close Freinds");
              //Navigator.
              }
              switch(value){
                case 'Favorites':print("Favorites");
              //Navigator.
              }
            },),
          ],

        ),
        body: Stack(
            children : [Positioned( top: 10, left: 20,child:CircleAvatar(
              radius: 64,
              backgroundImage: AssetImage("assets/images/user.png"),
            ),),
              //Padding(padding: EdgeInsets.only(top: 100)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 100,width: 200,),
                  Text("100",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 90,),
                  Text("100",style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 150,width: 200,),
                  Text("Followers",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 50,),
                  Text("Following",style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 370,width: 40,),
                  ElevatedButton(onPressed: (){
                   // Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfile()));
                  },
                    child: Text("Edit Profile",style: TextStyle(fontSize: 15)),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),),
                  SizedBox(height: 370,width: 40,),
                  ElevatedButton(onPressed: (){},
                    child: Text("Share Profile",style: TextStyle(fontSize: 15)),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),),
                  SizedBox(height: 370,width: 20,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.account_box_rounded, size: 40,)),
                ],),]),
        bottomSheet: TabBar(

          labelColor: Colors.black,
          padding: EdgeInsets.only(bottom: 300),
          tabs: [
            Tab(icon: Icon(Icons.add_box_rounded),),
            Tab(icon: Icon(Icons.movie_creation_outlined),),
            Tab(icon: Icon(Icons.perm_contact_cal_rounded),)
          ],
        ),

      ),
    );
  }
}