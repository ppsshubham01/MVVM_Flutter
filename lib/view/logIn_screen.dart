import 'package:flutter/material.dart';
import 'package:mvvm/util/routes/routes_name.dart';

import '../util/utils.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: InkWell(
          onTap: () {
            // Utils.toastMessages("tostmessage");
            // Navigator.pushNamed(context, RoutesName.home);
            Utils.flushBarErrorMessage('is there noOne', context);
          },
          child: const Text("data")),),
    );
  }
}
