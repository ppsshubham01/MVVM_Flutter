import 'package:flutter/material.dart';
import 'package:mvvm/res/components/round_button.dart';

import '../util/utils.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  void dispose(){
    super.dispose();

    _emailController.dispose();
    _passwordController.dispose();

    emailFocusNode.dispose();
    passwordFocusNode.dispose();

    _obscurePassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                focusNode: emailFocusNode,
                onFieldSubmitted: (value) {
                  Utils.focusFieldChangeUi(
                      context, emailFocusNode, passwordFocusNode);
                },
                decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'Email',
                    prefixIcon: Icon(
                      Icons.alternate_email,
                      color: Colors.red,
                    )),
              ),
              ValueListenableBuilder(
                valueListenable: _obscurePassword,
                builder: (BuildContext context, value, Widget? child) {
                  return TextFormField(
                    controller: _passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _obscurePassword.value,
                    obscuringCharacter: "*",
                    focusNode: passwordFocusNode,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Password',
                        prefixIcon: const Icon(Icons.lock_open_rounded),
                        suffixIcon: InkWell(
                            onTap: () {
                              _obscurePassword.value = !_obscurePassword.value;
                            },
                            child: Icon(_obscurePassword.value
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_rounded))),
                  );
                },
              ),
              SizedBox(
                height: height * .1,
              ),
              RoundButton(
                  title: 'Log In',
                  onPress: () {
                    if (_emailController.text.isEmpty) {
                      Utils.flushBarErrorMessage('Please Enter Email', context);
                    } else if (_passwordController.text.isEmpty) {
                      Utils.flushBarErrorMessage('Please Enter password', context);
                    }else if(_emailController.text.isEmpty && _passwordController.text.isEmpty){
                      Utils.snackBAr('Please enter Email & Password', context);
                    }else {
                      print("Api hits");
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
