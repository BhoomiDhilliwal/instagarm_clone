import  'package:flutter/material.dart';
import 'package:instagarm_clone/addPost.dart';
import 'package:instagarm_clone/message.dart';
import 'package:instagarm_clone/notification.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List <dynamic> story =[
    {"images":'assets/images/user.png',"username":"bhoomi_114"},
    {"images":'assets/images/evening.jpg',"username":"mannu08"},
    {"images":'assets/images/taj.jpg',"username":"Krishna"},
    {"images":'assets/images/moon.jpg',"username":"Arpita"},
    {"images":'assets/images/instagram.jpeg',"username":"Abhilasha"},
    {"images":'assets/images/user.png',"username":"Hrshita"},
  ];
  /*List <dynamic> posts =[
    {"image":'assets/images/nature.jpg'}
   // "images/nature.jpg",
    //"images/nature.jpg",
    //"images/nature.jpg",
    //"images/nature.jpg",
    //"images/nature.jpg",
  ];*/


  @override
  Widget build(BuildContext context) {
   // AddPost();
    return Scaffold(
      appBar: AppBar(
          title:Center(child: Text("Instagram",
            style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)),
          backgroundColor: Colors.black,
          actions:[IconButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationBox()));
          },icon:Icon( Icons.favorite)),
            IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageBox()));
            print("Message button is clicked");},
              icon: Icon(Icons.messenger,),
          )
          ]),
       body: SingleChildScrollView(
        child: Column(
          children: [
            //story
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(6, (index) => Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage('assets/images/story.png'),
                          child: CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage('${story[index]["images"]}'),
                          ),
                        ),
                        SizedBox(height:10 ,),
                        Text("${story[index]["username"]}",style: TextStyle(
                          fontSize: 12, color: Colors.black
                        ),),
                      ],
                    ),
                  ))
              ),
            ),
            SizedBox(height: 13,),
            Divider(color: Colors.black87,),

            Column(children:List.generate(6, (index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              //HEADER POST
              Row(children: [
                Container(padding: EdgeInsets.all(10),
                child:  CircleAvatar(
                    radius: 14,
                    backgroundImage: AssetImage('assets/images/story.png'),
                child:CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage('${story[index]["images"]}'),
                ),)),
                //Text("Profile Name"),
              Text("${story[index]["username"]}",style: TextStyle(
                  fontSize: 12, color: Colors.black,)),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
              ],),
              //IMAGE POST
              //Image.asset(posts[index]),
              Image.asset("assets/images/nature.jpg"),
             // Image.asset("assets/images/evening.jpg"),
              Row(children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
                IconButton(onPressed: (){}, icon: Icon(Icons.chat_bubble_outline)),
                IconButton(onPressed: (){}, icon: Icon(Icons.label_outline)),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_border_outlined)),
              ],),
              Container(padding: EdgeInsets.all(15),
              child: Column(crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                RichText(text: TextSpan(style: TextStyle(color: Colors.black87),
                    children: [TextSpan(text: "Liked by"),
                      TextSpan(text: "Profile Name", style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                      TextSpan(text: " and"),
                      TextSpan(text: "others",style: TextStyle(fontWeight:
                      FontWeight.bold)),])),
                  RichText(text: TextSpan(style: TextStyle(color: Colors.black87),
                      children: [TextSpan(text: "Profile Name", style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                        TextSpan(text: " Beauty of Nature..."),
                        ])),
                  Text("View all 12 comments...",style: TextStyle(color: Colors.black87),)
              ],),)
            ],)))
          ],
        ),
      ),
    );
  }
}