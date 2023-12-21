// // import 'package:flutter/material.dart';
// // import 'package:gradient_ui_widgets/gradient_ui_widgets.dart' as a;
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// // import 'dart:convert';
// // import 'package:http/http.dart' as http;
// // import 'package:firebase_core/firebase_core.dart';
// // import 'package:google_sign_in/google_sign_in.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// //
// // class AuthService {
// //   final FirebaseAuth _auth = FirebaseAuth.instance;
// //   final GoogleSignIn googleSignIn = GoogleSignIn();
// //
// //   Future<User?> signInWithGoogle() async {
// //     try {
// //       final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
// //       if (googleSignInAccount == null) return null;
// //
// //       final GoogleSignInAuthentication googleSignInAuthentication =
// //       await googleSignInAccount.authentication;
// //
// //       final AuthCredential credential = GoogleAuthProvider.credential(
// //         accessToken: googleSignInAuthentication.accessToken,
// //         idToken: googleSignInAuthentication.idToken,
// //       );
// //
// //       final UserCredential authResult = await _auth.signInWithCredential(credential);
// //       final User? user = authResult.user;
// //
// //       return user;
// //     } catch (e) {
// //       print(e.toString());
// //       return null;
// //     }
// //   }
// // }
// //
// //
// // class login extends StatefulWidget {
// //   const login({Key? key}) : super(key: key);
// //
// //   @override
// //   State<login> createState() => _loginState();
// // }
// //
// // class _loginState extends State<login> {
// //   Gradient g1 = LinearGradient(
// //     colors: [
// //       Color(0xFF0F1D44), //blue gradient
// //       Color(0xFF0F1D44),
// //     ],
// //   );
// //
// //
// //   @override
// //   void dispose() {
// //     // TODO: implement dispose
// //
// //     super.dispose();
// //   }
// // @override
// //   Widget build(BuildContext context) {
// //   Color myBackgroundColor = Color(0xFF5794FF);
// //     return Scaffold(
// //       //backgroundColor: Colors.blue,
// //
// //         body: Container(
// //           // decoration: BoxDecoration(
// //           //   image: DecorationImage(
// //           //     image: AssetImage('assets/background4.PNG'),
// //           //     fit: BoxFit.cover,
// //           //   ),
// //           // ),
// //           color: myBackgroundColor,
// //           height: MediaQuery.of(context).size.height,
// //           child: SingleChildScrollView(
// //             child: SafeArea(
// //               child: Column(
// //
// //                   crossAxisAlignment: CrossAxisAlignment.stretch,
// //                   children: <Widget> [
// //
// //                     Padding(
// //                       padding: const EdgeInsets.fromLTRB(30.0,80.0,30.0,20.0),
// //                       child: Column(
// //                         crossAxisAlignment: CrossAxisAlignment.center,
// //                         children: <Widget>[
// //
// //                           Image.asset(
// //                             'assets/sparkslogo.png',
// //                             height: 200.0,
// //                           ),
// //                           SizedBox(height: 20.0),
// //                           Text(
// //                             'Social Sign In',
// //                             style: TextStyle(
// //                               color: Colors.white,
// //                               letterSpacing: 2.5,
// //                               fontFamily: 'Inter',
// //                               fontSize: 45.0,
// //                               fontWeight: FontWeight.w900,
// //                             ),
// //                           ),
// //                           SizedBox(height: 35.0),
// //                           ElevatedButton.icon(
// //                               onPressed: (){
// //
// //                               },
// //                               style: ElevatedButton.styleFrom(
// //                                 backgroundColor: Color(0xFF0F1D44), // Set the background color
// //                                 shape: RoundedRectangleBorder(
// //                                   borderRadius: BorderRadius.circular(10.0), // Set the border radius
// //                                 ),
// //                                 fixedSize: Size(300, 55)
// //                               ),
// //                               icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.white,),
// //                               label: Text(
// //                                   'Login with Facebook',
// //                                 style: TextStyle(
// //                                   fontSize: 25.0,
// //                                   fontWeight: FontWeight.w400,
// //                                 ),
// //                               ),
// //                             ),
// //                           SizedBox(height: 10,),
// //                           ElevatedButton.icon(
// //                             // onPressed: (){
// //                             //   Navigator.pushReplacementNamed(context, '/data_display');
// //                             // },
// //                             onPressed: () async {
// //                               // Replace with your own web client ID obtained from the Google Cloud Console
// //                               const String clientId = '142920069576-r7hjnhq3oedo0iafohf802nc2smvmv4t.apps.googleusercontent.com';
// //                               // Replace with your desired redirect URI, must match the one configured in the Google Cloud Console
// //                               const String redirectUri = '';
// //
// //                               // Build the Google Sign-In URL
// //                               final String googleSignInUrl =
// //                                   'https://accounts.google.com/o/oauth2/auth?response_type=code&client_id=$clientId&redirect_uri=$redirectUri&scope=email%20profile';
// //
// //                               // Launch the Google Sign-In URL in a web view or external browser
// //                               // (You might want to use a WebView package or launch the URL in an external browser).
// //
// //                               // After user authorization, you will receive an authorization code
// //
// //                               // Exchange the authorization code for an access token
// //                               var response = await http.post(
// //                                 Uri.parse('https://oauth2.googleapis.com/token'),
// //                                 headers: {'Content-Type': 'application/x-www-form-urlencoded'},
// //                                 body: {
// //                                   'code': 'AUTHORIZATION_CODE_RECEIVED_FROM_GOOGLE',
// //                                   'client_id': clientId,
// //                                   'client_secret': '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',
// //                                   'redirect_uri': redirectUri,
// //                                   'grant_type': 'authorization_code',
// //                                 },
// //                               );
// //
// //                               if (response.statusCode == 200) {
// //                                 var accessToken = json.decode(response.body)['access_token'];
// //                                 Navigator.pushReplacementNamed(context, '/data_display');
// //                               } else {
// //                                 print('Failed to get access token: ${response.statusCode}');
// //                               }
// //                             },
// //                             // onPressed: () async {
// //                             //   AuthService authService = AuthService();
// //                             //   User? user = await authService.signInWithGoogle();
// //                             //
// //                             //   if (user != null) {
// //                             //     // User signed in
// //                             //     print('Signed in: ${user.displayName}');
// //                             //     Navigator.pushReplacementNamed(context, '/data_display');
// //                             //   } else {
// //                             //     // Sign-in failed
// //                             //     print('Sign-in failed');
// //                             //   }
// //                             // },
// //                             style: ElevatedButton.styleFrom(
// //                                 backgroundColor: Colors.white, // Set the background color
// //                                 shape: RoundedRectangleBorder(
// //                                   borderRadius: BorderRadius.circular(10.0), // Set the border radius
// //                                 ),
// //                                 fixedSize: Size(300, 50)
// //                             ),
// //                             icon: FaIcon(FontAwesomeIcons.google, color: Colors.red),
// //                             label: Text(
// //                               '  Login with Google',
// //                               style: TextStyle(
// //                                 fontSize: 25.0,
// //                                 fontWeight: FontWeight.w400,
// //                                 color: Colors.black
// //                               ),
// //                             ),
// //                           ),
// //                           SizedBox(height: 20,),
// //                           SizedBox(height: 10,),
// //                           SizedBox(height: 30.0),
// //
// //                         ],
// //                       ),
// //                     ),
// //                   ]
// //               ),
// //
// //             ),
// //           ),
// //         )
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
//
// // void main() {
// //   runApp(MyApp());
// // }
// //
// class login extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LoginPage(),
//     );
//   }
// }
//
// class LoginPage extends StatelessWidget {
//   Future<void> _loginWithFacebook(BuildContext context) async {
//     try {
//       // Log in with Facebook
//       final LoginResult result = await FacebookAuth.instance.login();
//
//       // Check if login was successful
//       if (result.status == LoginStatus.success) {
//         print('Facebook Login Successful!');
//         print('User ID: ${result.accessToken!.userId}');
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => UserInfoScreen(
//               userId: result.accessToken!.userId,
//               platform: 'Facebook',
//             ),
//           ),
//         );
//       } else {
//         print('Facebook Login Failed.');
//       }
//     } catch (e) {
//
//     }
//   }
//
//   Future<void> _loginWithGoogle(BuildContext context) async {
//     try {
//       // Initialize GoogleSignIn
//       final GoogleSignInAccount? googleUser = await GoogleSignIn(serverClientId: "142920069576-r7hjnhq3oedo0iafohf802nc2smvmv4t.apps.googleusercontent.com").signIn();
//
//       // Check if Google login was successful
//       if (googleUser != null) {
//         print('Google Login Successful!');
//         // Navigate to user info screen (pass user information if needed)
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => UserInfoScreen(
//               userId: googleUser.id,
//               userName: googleUser.displayName ?? '',
//               userEmail: googleUser.email ?? '',
//               platform: 'Google',
//             ),
//           ),
//         );
//       }
//       else {
//         print('Google Login Failed.');
//       }
//     } catch (e) {
//       Navigator.pushReplacementNamed(context, '/data_display');
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Social Media Login'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton(
//               onPressed: () => _loginWithFacebook(context),
//               child: Text('Login with Facebook'),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 _loginWithGoogle(context);
//                 Navigator.pushReplacementNamed(context, '/data_display');
//                 },
//               child: Text('Login with Google'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class UserInfoScreen extends StatelessWidget {
//   final String userId;
//   final String userName;
//   final String userEmail;
//   final String platform;
//
//   const UserInfoScreen({
//     required this.userId,
//     this.userName = '',
//     this.userEmail = '',
//     required this.platform,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('User Info'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Platform: $platform',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'User ID: $userId',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 10),
//             if (userName.isNotEmpty)
//               Text(
//                 'Name: $userName',
//                 style: TextStyle(fontSize: 18),
//               ),
//             if (userEmail.isNotEmpty)
//               Text(
//                 'Email: $userEmail',
//                 style: TextStyle(fontSize: 18),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:gradient_ui_widgets/gradient_ui_widgets.dart' as a;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:google_sign_in/google_sign_in.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

    Future<void> _loginWithFacebook(BuildContext context) async {
    try {
      // Log in with Facebook
      final LoginResult result = await FacebookAuth.instance.login();
      Navigator.pushReplacementNamed(context, '/data_display');
      // Check if login was successful
      if (result.status == LoginStatus.success) {
        print('Facebook Login Successful!');
        // print('User ID: ${result.accessToken!.userId}');
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => UserInfoScreen(
        //       userId: result.accessToken!.userId,
        //       platform: 'Facebook',
        //     ),
        //   ),
        // );
      } else {
        print('Facebook Login Failed.');
      }
    } catch (e) {
      print('Facebook Login exception: ' + e.toString());
      Navigator.pushReplacementNamed(context, '/data_display');
    }
  }

  Future<void> _loginWithGoogle(BuildContext context) async {
    try {
      // Initialize GoogleSignIn
      final GoogleSignInAccount? googleUser = await GoogleSignIn(serverClientId: "142920069576-r7hjnhq3oedo0iafohf802nc2smvmv4t.apps.googleusercontent.com").signIn();

      // Check if Google login was successful
      if (googleUser != null) {
        print('Google Login Successful!');
        // // Navigate to user info screen (pass user information if needed)
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => UserInfoScreen(
        //       userId: googleUser.id,
        //       userName: googleUser.displayName ?? '',
        //       userEmail: googleUser.email ?? '',
        //       platform: 'Google',
        //     ),
        //   ),
        // );
      }
      else {
        print('Google Login Failed.');
      }
    } catch (e) {
      Navigator.pushReplacementNamed(context, '/data_display');
    }
  }


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

                          // Image.asset(
                          //   'assets/sparkslogo.png',
                          //   height: 200.0,
                          // ),
                          CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('assets/sparkslogo.png'), // Replace with your image path
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            'Social Sign In',
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2.5,
                              fontFamily: 'Ubunto',
                              fontSize: 40.0,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(height: 100.0),
                          ElevatedButton.icon(
                              onPressed: (){
                                _loginWithFacebook(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF5794FF), // Set the background color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0), // Set the border radius
                                ),
                                fixedSize: Size(300, 55)
                              ),
                              icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.white,),
                              label: Text(
                                  'Login with Facebook',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          SizedBox(height: 10,),
                          ElevatedButton.icon(
                            // onPressed: (){
                            //   Navigator.pushReplacementNamed(context, '/data_display');
                            // },
                            onPressed: () async {
                              _loginWithGoogle(context);

                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white, // Set the background color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0), // Set the border radius
                                ),
                                fixedSize: Size(300, 50)
                            ),
                            icon: FaIcon(FontAwesomeIcons.google, color: Colors.red),
                            label: Text(
                              '  Login with Google',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          SizedBox(height: 10,),
                          SizedBox(height: 30.0),

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