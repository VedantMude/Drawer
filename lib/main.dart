import 'package:drawer/pages/Home.dart';
import 'package:drawer/pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner: false,

    );
  }
}
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
final List<String>l=[
  "Home","Setting","Login","Signup"
];
final List<Widget> p=[
  Homep(),Loginp(),

];


class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
     drawer: Drawer(
       backgroundColor: Colors.lightBlue,
       child: ListView(
         children: [
           DrawerHeader(child:CircleAvatar(
             backgroundColor: Colors.white,
             radius:2,
             child: Icon(Icons.person,size: 80),



           ),
     ),

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: ListTile(
               title: Text("Home",style: TextStyle(
                 color: Colors.black,
                 fontSize: 20.0,

               ),),
               leading: Icon(Icons.home,size: 50.0
               ),
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder:(context)=>Homep()));
               },


             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: ListTile(

               title: Text("Calender",style: TextStyle(
                 color: Colors.black,
                 fontSize: 20.0,

               ),),
               leading: Icon(Icons.calendar_month,size: 50.0),
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder:(context)=>Loginp()));
               },


             ),
           ),
           
         ],
       ),
     ),
    );
  }
}

