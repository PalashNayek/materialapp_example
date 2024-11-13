import 'package:flutter/material.dart';
import 'package:materialapp_example/screens/app_screen.dart';
import 'package:materialapp_example/view_models/app_viewmodel.dart';
import 'package:provider/provider.dart';

import 'di/service_locator.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<AppViewModel>(),  // Provide AppViewModel to the app
      child: Consumer<AppViewModel>(
        builder: (context, viewModel, child) {
          return MaterialApp(
            title: viewModel.appTitle,
            theme: viewModel.themeData,
            home: AppScreen(),
          );
        },
      ),
    );
  }
}
