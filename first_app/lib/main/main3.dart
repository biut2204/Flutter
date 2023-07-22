// import 'package:flutter/material.dart';
//
// void main(){
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(MaterialApp(
//     home: SafeArea(
//       child: Scaffold(
//         // appBar: AppBar(
//         //   backgroundColor: Colors.red,
//         //   title: Text('Tự học Flutter'),
//         // ),
//         // body: Center(
//         //     child: Text("Hello word")
//         // ),
//         body: Center(
//           child: MyWidget(true),
//         ),
//       ),
//     ),
//     debugShowCheckedModeBanner: false,
//   ));
// }
//
// class MyWidget extends StatelessWidget {
//   final bool loading;
//
//   MyWidget(this.loading);
//
//   @override
//   Widget build(BuildContext context) {
//     if (loading == true) {
//       return CircularProgressIndicator();
//     } else {
//       return const Text("State");
//     }
//   }
// }
