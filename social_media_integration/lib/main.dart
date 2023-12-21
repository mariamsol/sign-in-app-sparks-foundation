// // import 'package:flutter/material.dart';
// // import 'package:gradient_ui_widgets/gradient_ui_widgets.dart' as a;
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
// //       Color(0xFF18B1BD), //blue gradient
// //       Color(0xFF060FA1),
// //     ],
// //   );
// //
// //
// //   final controllerEmail = TextEditingController();
// //   final controllerPassword = TextEditingController();
// //   String alert = '';
// //   bool backendValid = false;
// //   @override
// //   void dispose() {
// //     // TODO: implement dispose
// //
// //     super.dispose();
// //   }
// // @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       //backgroundColor: Colors.blue,
// //
// //         body: Container(
// //           decoration: BoxDecoration(
// //             image: DecorationImage(
// //               image: AssetImage('assets/background4.PNG'),
// //               fit: BoxFit.cover,
// //             ),
// //           ),
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
// //                             'assets/logo1.png',
// //                             height: 100.0,
// //                           ),
// //                           Text(
// //                             'Remember Me',
// //                             style: TextStyle(
// //                               color: Colors.white,
// //                               letterSpacing: 4.0,
// //                               fontFamily: 'Dosis',
// //                               fontSize: 45.0,
// //                               fontWeight: FontWeight.w900,
// //                             ),
// //                           ),
// //                           SizedBox(height: 10.0),
// //                           Text(
// //                             'Login as a patient',
// //                             textAlign: TextAlign.center,
// //                             style: TextStyle(
// //                               color: Colors.white,
// //                               letterSpacing: 4.0,
// //                               fontFamily: 'Dosis',
// //                               fontSize: 17.0,
// //                               fontWeight: FontWeight.w900,
// //                             ),
// //                           ),
// //                           SizedBox(height: 15.0),
// //                           TextFormField(
// //                             decoration: InputDecoration(
// //                               enabledBorder: UnderlineInputBorder(
// //                                 borderSide: BorderSide(width: 3, color: Colors.white),
// //                               ),
// //                               focusedBorder: UnderlineInputBorder(
// //                                   borderSide: BorderSide(width: 3, color: Colors.white)
// //                               ),
// //                               labelText:'Enter your email',
// //                               labelStyle: TextStyle(color: Colors.white, fontSize: 20.0),
// //                             ),
// //                             controller: controllerEmail,
// //                             style: TextStyle(color: Colors.white),
// //                           ),
// //                           SizedBox(height: 30.0),
// //                           TextFormField(
// //                             decoration: InputDecoration(
// //                               enabledBorder: UnderlineInputBorder(
// //                                 borderSide: BorderSide(width: 3, color: Colors.white),
// //                               ),
// //                               focusedBorder: UnderlineInputBorder(
// //                                   borderSide: BorderSide(width: 3, color: Colors.white)
// //                               ),
// //                               labelText:'Enter your password',
// //                               labelStyle: TextStyle(color: Colors.white, fontSize: 20.0),
// //                             ),
// //                             controller: controllerPassword,
// //                             style: TextStyle(color: Colors.white),
// //                             obscureText: true,
// //                           ),
// //                           SizedBox(height: 10.0),
// //                           Text(
// //                             '$alert',
// //                             textAlign: TextAlign.center,
// //                             style: TextStyle(
// //                                 color: Colors.redAccent,
// //                                 fontSize: 20
// //                             ),
// //                           ),
// //                           SizedBox(height: 15.0),
// //                           a.GradientFloatingActionButton.extended(
// //                             heroTag: UniqueKey(),
// //                             onPressed: () {
// //                             },
// //                             label: Text(
// //                               "Login",
// //                               style: TextStyle(
// //                                 fontSize: 25.0,
// //                                 fontWeight: FontWeight.w400,
// //                               ),
// //                             ),
// //                             shape: StadiumBorder(),
// //                             gradient: g1,
// //                           ),
// //                           SizedBox(height: 20,),
// //                           InkWell(
// //                             onTap: () {
// //                               //Navigator.pushNamed(context, '/home');
// //                               Navigator.pushReplacementNamed(context,'/signup_patient');
// //                             },
// //                             child: Text(
// //                               'Signup',
// //                               style: TextStyle(
// //                                 fontSize: 20,
// //                                 color: Color(0xFF18B1BD),
// //                               ),
// //                             ),
// //
// //                           ),
// //                           SizedBox(height: 10,),
// //                           InkWell(
// //                             onTap: () {
// //                               Navigator.pushReplacementNamed(context, '/login_caregiver');
// //                             },
// //                             child: Text(
// //                               'Login as a caregiver',
// //                               style: TextStyle(
// //                                 fontSize: 20,
// //                                 color: Color(0xFF18B1BD),
// //                               ),
// //                             ),
// //
// //                           ),
// //                           SizedBox(height: 30.0),
// //
// //                         ],
// //                       ),
// //                     ),
// //
// //                   ]
// //               ),
// //             ),
// //           ),
// //         )
// //     );
// //   }
//
//
// import 'package:flutter/material.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
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
//         // Navigate to user info screen (pass user ID if needed)
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
//       print('Error logging in with Facebook: $e');
//     }
//   }
//
//   Future<void> _loginWithGoogle(BuildContext context) async {
//     try {
//       // Initialize GoogleSignIn
//       final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
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
//       print('Error logging in with Google: $e');
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
//               onPressed: () => _loginWithGoogle(context),
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
import 'package:social_media_integration/screens/login.dart';
import 'package:social_media_integration/screens/data_display.dart';
import 'package:get/get.dart';

void main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  // try {
  //   await Firebase.initializeApp();
  // } catch (e) {
  //   print('Firebase initialization error: $e');
  // }
  runApp(GetMaterialApp(
    //debugShowCheckedModeBanner: false,
    initialRoute: '/login',
    routes: {
      '/login': (context) => login(),
      '/data_display': (context) => displaydata(),

    },
  ));
}

