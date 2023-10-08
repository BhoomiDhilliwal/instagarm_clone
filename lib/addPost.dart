import 'package:flutter/material.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {

  /*List <dynamic> posts =[
    //{"image":'assets/images/nature.jpg'}
     "images/nature.jpg",
    "images/nature.jpg",
    "images/nature.jpg",
    "images/nature.jpg",
    "images/nature.jpg",
  ];*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post to"),
        actions: [
          TextButton(onPressed: (){}, child: Text("Post")),
        ],
      ),
     /* body: Column(children:List.generate(6, (index) => Column(
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
                    backgroundImage: AssetImage("assets/images/user.png"),
                  ),)),
            //Text("Profile Name"),
            Text("Profile Name",style: TextStyle(
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
        ],))),*/
    );
  }
}
