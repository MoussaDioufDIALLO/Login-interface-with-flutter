import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yoga/delayed_animation.dart';
import 'package:yoga/main.dart';
import 'package:yoga/login_page.dart';

class SocialPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(icon: Icon(
            Icons.arrow_back,
            color:Colors.black,
            size: 30,
        ), onPressed: () {
          Navigator.pop(context);
        },
        ),
      ),
      body: SingleChildScrollView(child: Column(
        children: [
          DelayedAnimation(delay: 1000, child: Container(
            height: 280,
            child: Image.asset('images/yoga_3.png'),
           ),
          ),
          DelayedAnimation(delay: 1000, child: Container(
            height: 280,
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 30,
              ),
              child: Column(children: [
                Text("Change starts here",
                style: GoogleFonts.poppins(
                  color: d_red,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                ),
                SizedBox(height:10),
                Text('Save your progresss to access your personal training program!',
                  style: GoogleFonts.poppins(
                    color:Colors.grey,
                    fontSize: 15,
                  ),
                ),
               ],
              ),
            ),
          ),
          ),
          DelayedAnimation(
              delay: 3500,
              child: Container(
                margin: EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 40,
                ),
                child: Column(
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:  (context)=>LoginPage(),
                        ),
                      );
                    },
                        style:ElevatedButton.styleFrom(
                          shape:StadiumBorder(),
                          backgroundColor: d_red,
                          padding: EdgeInsets.all(13),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Icon(Icons.mail_outline_outlined),
                        Text('EMAIL',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        )
                        ],
                      ),
                    ),
                    SizedBox (height: 20),
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:  (context)=>LoginPage(),
                      ),
                      );
                    },
                        style:ElevatedButton.styleFrom(
                          shape:StadiumBorder(),
                          backgroundColor: Color(0xFF576dff),
                          padding: EdgeInsets.all(13),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.facebook),
                            Text('FACEBOOK',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                            ),)
                          ],
                        )
                    ),
                    SizedBox (height: 20),
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:  (context)=>LoginPage(),
                      ),
                      );
                    },
                        style:ElevatedButton.styleFrom(
                          shape:StadiumBorder(),
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.all(13),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('images/google.png',
                              height: 20,),
                            Text('GOOGLE',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),)
                          ],
                        )
                    )
                  ],
                ),
              )
          )
        ],
      )),
    );
  }
}
