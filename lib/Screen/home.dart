import 'package:Try_again/Screen/attendance.dart';
import 'package:Try_again/Screen/calendar.dart';
import 'package:Try_again/Screen/fee.dart';
import 'package:Try_again/Screen/login.dart';
import 'package:Try_again/Screen/profile.dart';
import 'package:Try_again/Screen/timetable.dart';
import 'package:flutter/material.dart';
import 'constant.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipPath(
                    child: Container(
                        height: 250,
                        width: 900,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF73AEF5),
                              Color(0xFF61A4F1),
                              Color(0xFF478DE0),
                              Color(0xFF398AE5),
                            ],
                          ),
                        ),
                        child: IconButton(
                            icon: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            iconSize: 80,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>userProfile()));
                            }),),
                    clipper: BottomWaveClipper(),
                  ),
                ],
              ),
              
          _attendance(),
          _calendar(),
          _timetable(),
          _fee(),
          _logout(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _attendance() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 35, right: 15, left: 15),
          child: Card(
            elevation: 5,
            child: ListTile(
              leading: Icon(Icons.pan_tool,size: 40,color: Colors.black,),
              title: Text('ATTENDANCE',style: TextStyle(fontSize: 30),),
              subtitle: Text('of Student',),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _calendar() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
          child: Card(
            elevation: 5,
            child: ListTile(
              leading: Icon(Icons.description,size: 40,color: Colors.black,),
              title: Text('CALENDAR',style: TextStyle(fontSize: 30),),
              subtitle: Text('of School',),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _timetable() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
          child: Card(
            elevation: 5,
            child: ListTile(
              leading: Icon(Icons.date_range,size: 40,color: Colors.black,),
              title: Text('TIMETABLE',style: TextStyle(fontSize: 30),),
              subtitle: Text('of Student',),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _fee() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
          child: Card(
            elevation: 5,
            child: ListTile(
              leading: Icon(Icons.attach_money,size: 40,
              color: Colors.black,),
              title: Text('FEE',style: TextStyle(fontSize: 30),),
              subtitle: Text('of Student',),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>fee()));
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _logout() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
          child: Card(
            elevation: 5,
            child: ListTile(
              leading: Icon(Icons.exit_to_app,size: 40,color: Colors.black,),
              title: Text('LOGOUT',style: TextStyle(fontSize: 30)),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));},
            ),
          ),
        ),
      ],
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 20);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
        Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
