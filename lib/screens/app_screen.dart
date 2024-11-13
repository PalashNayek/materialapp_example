import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/app_viewmodel.dart';

class AppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<AppViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(viewModel.appTitle),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: viewModel.toggleTheme,  // Toggle theme on button press
          child: Text("Toggle Theme"),
        ),
      ),
    );
  }
}
