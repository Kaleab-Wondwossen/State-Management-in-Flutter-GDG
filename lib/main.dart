import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:statemanagement/get_x.dart';

//import 'package:provider/provider.dart';
//import 'package:statemanagement/provider.dart';
// import 'package:statemanagement/set_state.dart';


// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => Counter(), // Provide the Counter instance
//       child: const MaterialApp(
//         title: 'State Management Demo',
//         home: CounterApp(), // Use CounterApp as the home screen
//       ),
//     );
//   }
// }


// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       // Use GetMaterialApp instead of MaterialApp
//       debugShowCheckedModeBanner: false,
//       title: 'GetX Example',
//       home: CounterApp(), // Set CounterApp as the home screen
//     );
//   }
// }


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagement/BLoC/screens/screen_one.dart';
import 'BLoC/blocs/bloc.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BLoC Counter Example',
      home: BlocProvider(
        // Provide the CounterBloc to the widget tree
        create: (context) => CounterBloc(),
        child: const CounterScreen(), // Set CounterScreen as the home screen
      ),
    );
  }
}