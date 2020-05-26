import 'package:flutter/material.dart';

class fee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                              Icons.attach_money,
                              color: Colors.white,
                            ),
                            iconSize: 80,
                            onPressed: null),),
                    clipper: BottomWaveClipper(),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text("Student  FEE",style: TextStyle(
                fontSize: 30
              ),),
                _tuition(),
                SizedBox(height: 20,),
                _bus(),
                SizedBox(height: 20,),
                _previous(),
                SizedBox(height: 20,),
                _total(),
                SizedBox(height: 20,),
                _submitBtu(),
            ],
          ),
        ),
      ),
    );
  }
  Widget _tuition(){
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Row(
          children: <Widget>[
            Text("Tuition Fee :",style: TextStyle(fontSize: 20),),
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text("30,000",style: TextStyle(fontSize: 20),),)
          ],
        ),
      ),
    );
  }
    Widget _bus(){
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Row(
          children: <Widget>[
            Text("Bus Fee :",style: TextStyle(fontSize: 20),),
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text("10,000",style: TextStyle(fontSize: 20),),)
          ],
        ),
      ),
    );
  }

    Widget _previous(){
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Row(
          children: <Widget>[
            Text("Previous Bal :",style: TextStyle(fontSize: 20),),
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text("0",style: TextStyle(fontSize: 20),),)
          ],
        ),
      ),
    );
  }

    Widget _total(){
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Row(
          children: <Widget>[
            Text("Total Fee :",style: TextStyle(fontSize: 40),),
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text("40,000",style: TextStyle(fontSize: 40),),)
          ],
        ),
      ),
    );
  }

  Widget _submitBtu(){
    return Container(
      child: RaisedButton(
        child: Text("Pay"),
        onPressed: (){}),
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
