import 'package:flutter/material.dart';
import 'package:mvvm/util/routes/routes.dart';
import 'package:mvvm/util/routes/routes_name.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ) ,

      initialRoute: RoutesName.login,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}




//Show a Profile pic for DP
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Desktop Profile Picture Demo'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             _showProfileDialog(context);
//           },
//           child: Text('Show Profile Picture'),
//         ),
//       ),
//     );
//   }
//
//   void _showProfileDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Profile Picture'),
//           content: ProfilePicture(
//             imageUrl: 'https://source.unsplash.com/random',
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('Close'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
//
// class ProfilePicture extends StatelessWidget {
//   final String imageUrl;
//
//   const ProfilePicture({required this.imageUrl});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 200.0,
//       height: 200.0,
//       child: Image.network(
//         imageUrl,
//         fit: BoxFit.cover,
//       ),
//     );
//   }
// }
