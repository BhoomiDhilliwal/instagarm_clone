import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagarm_clone/spalsh.dart';
import 'package:instagarm_clone/newPage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( Home());
}

class Home extends StatelessWidget {
  Home({Key? key}) :super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sample App",
      home:SplashScreen(),
      debugShowCheckedModeBanner: false,

    );
  }
}

class Login extends StatefulWidget {
  //const Login({super.key});


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  /*void initState() {
    Firebase.initializeApp();
    super.initState();
  }*/

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title:Center(child: Text("Instagram",
          style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
        ),
        backgroundColor: Colors.black,
        actions:[
          PopupMenuButton(itemBuilder: (context) {
            return[
              PopupMenuItem(child: Text("settings")),
              PopupMenuItem(child: Text("login")),
              PopupMenuItem(child: Text("signup"))
            ];
          })
        ],

      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
              children: [
                SizedBox(height: 30,),
                Container(
                  child: Image.asset('assets/images/instagram.jpeg'),height: 100,width: 200,
                ),
                SizedBox(height: 30,),
                ElevatedButton.icon(onPressed: (){}, style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 15),
                ),
                  icon: Icon(Icons.facebook,),
                  label: Text('Continue with Facebook'),),
                Text("------------or------------", style: TextStyle(fontSize: 20,color: Colors.black),),
                SizedBox(height: 30,),
                TextField(controller:email, decoration: InputDecoration(filled: true, hintText: "Enter your Email",
                    prefixIcon: Icon(Icons.mail, color: Colors.black,) ), ),
                SizedBox(height: 30,),
                TextField(controller: pass, decoration: InputDecoration(filled: true, hintText: "enter your password",
                    prefixIcon: Icon(Icons.remove_red_eye_rounded)),
                  obscureText: true,),
                SizedBox(height: 30,),
                Center(child: ElevatedButton(onPressed: (){
                  /*FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: email.text,
                      password: pass.text).then((value) => print("Logged In")).
                  onError((error, stackTrace) => print(error));*/
                  Padding(padding: EdgeInsets.symmetric(horizontal: 8));
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>NewPage()));
                  print("your Email: $email.text , your Password: $pass.text");
                }, child: Text("Log IN"),
                  style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 15),
                      backgroundColor: Colors.deepPurpleAccent),),
                ),
                //SizedBox(width: 60,),
                //ElevatedButton(onPressed: (){
                //Padding(padding: EdgeInsets.symmetric(horizontal: 8));
                //}, child: Text("Sign up" ,),)
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    Padding(padding: EdgeInsets.symmetric(vertical: 0)),
                    ElevatedButton(onPressed: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign_up()));
                    },
                      child:Text("Sign up", style: TextStyle(fontWeight: FontWeight.bold),),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurpleAccent),) ,
                    Padding(padding: EdgeInsets.symmetric(vertical: 0)),
                  ],
                ),
              ]
          ),
        ),
      ),
    );
  }
}