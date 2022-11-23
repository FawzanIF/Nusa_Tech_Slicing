import 'dart:ui';

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
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        hintColor: Colors.grey,
      ),
      home: MyHomePage(title: 'Test Slicing'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Create Personal Account',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white70),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  _tabSection(context),
                  
                ],
              ),
        ));
  }
}

Widget _tabSection(BuildContext context) {
  return DefaultTabController(
    length: 2,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          child: TabBar(labelColor: Colors.white, tabs: [
            Tab(
              text: "Email",
            ),
            Tab(text: "Phone Number"),
          ]),
        ),
        Container(
          //Add this to give height
          height: MediaQuery.of(context).size.height,
          child: TabBarView(children: [
            Container(
              child: Text("Email"),
            ),
            _phoneNumber(context)
          ]),
        ),
      ],
    ),
  );
}

Widget _phoneNumber(BuildContext context) {
  return Column(
    children: [
      SizedBox(
                    height: 30,
                  ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 5,
          ),
          Text(
            'Username',
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
        ],
      ),
      SizedBox(height: 10,),
      TextField(
        obscureText: true,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
            ),
            labelText: 'Username',
            hintText: 'Username',
            hintStyle: TextStyle(color: Colors.white, fontSize: 15)),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 5,
          ),
          Text(
            'Phone Number',
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
        ],
      ),
      SizedBox(height: 10,),
      TextField(
        obscureText: true,
        decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Flag_of_Indonesia_%28physical_version%29.svg/2560px-Flag_of_Indonesia_%28physical_version%29.svg.png',
                            ),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text('+62 |',
                      style: TextStyle(color: Colors.grey, fontSize: 18))
                ],
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
            ),
            labelText: 'Phone Number',
            hintText: 'Phone Number',
            hintStyle: TextStyle(color: Colors.white, fontSize: 15)),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 5,
          ),
          Text(
            'Password',
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
          
        ],
      ),
      SizedBox(height: 10,),
      TextField(
        obscureText: true,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
            ),
            labelText: 'Password',
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.white, fontSize: 15)),
      ),
      SizedBox(height: 10,),
      Row(
        children: [
          Text(
            'Refferal ID (Optional)',
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.grey,
          )
        ],
      ),
      SizedBox(height: 70,),
      Row(
        children: [
          Icon(Icons.circle, color: Colors.grey,),
          SizedBox(width: 3,),
          Text('I have read and agree to Digicoins Terms and Services and Privacy Policy', style: TextStyle(color: Colors.grey, fontSize: 11),),
        ],
      ),
      Container(
        height: 45,
        width: MediaQuery.of(context).size.width - 50,
        margin: EdgeInsets.only(top: 10, bottom: 20),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Color.fromARGB(255, 103, 174, 232),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child:
                Text('Create Account', style: TextStyle(color: Colors.white)),
            onPressed: () {}),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        children: [
          Text(
            'Already Have Account?',
            style: TextStyle(color: Colors.white),
          ),
          Text(' Login', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700),)
        ],
      )
    ],
  );
}
