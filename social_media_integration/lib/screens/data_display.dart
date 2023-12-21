import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class displaydata extends StatefulWidget {
  const displaydata({Key? key}) : super(key: key);

  @override
  State<displaydata> createState() => _displaydataState();
}

class _displaydataState extends State<displaydata> {
  Gradient g1 = LinearGradient(
    colors: [
      Color(0xFF0F1D44), //blue gradient
      Color(0xFF0F1D44),
    ],
  );

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Color myBackgroundColor = Color(0xFF212121);
    return Scaffold(
      //backgroundColor: Colors.blue,

        body: Container(
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage('assets/background4.PNG'),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          color: myBackgroundColor,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(

                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget> [

                    Padding(
                      padding: const EdgeInsets.fromLTRB(30.0,80.0,30.0,20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 80,
                            backgroundImage: AssetImage('assets/unknown_person.jpg'), // Replace with your image path
                          ),
                          SizedBox(height: 35.0),
                          Text(
                            "Mariam Soliman",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.email, color: Color(0xFFD3B634)), // Replace with your desired icon
                              SizedBox(width: 8), // Adjust the space between icon and text
                              Text(
                                "mariamalkamy@gmail.com",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.phone, color: Color(0xFF4DB470)), // Replace with your desired icon
                              SizedBox(width: 8), // Adjust the space between icon and text
                              Text(
                                "0123456789",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),


                          SizedBox(height: 35.0),
                          ElevatedButton.icon(
                            onPressed: (){
                              Navigator.pushReplacementNamed(context, '/login');
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFBE3C79), // Set the background color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0), // Set the border radius
                                ),
                                fixedSize: Size(300, 55)
                            ),
                            icon: FaIcon(FontAwesomeIcons.arrowLeft, color: Colors.white,),
                            label: Text(
                              'Sign Out',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ]
              ),

            ),
          ),
        )
    );
  }
}