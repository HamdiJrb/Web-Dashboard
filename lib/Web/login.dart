import 'package:dashboard_web/Web/web_main.dart';
import 'package:dashboard_web/colors.dart';
import 'package:dashboard_web/gradientButton.dart';
import 'package:dashboard_web/userViewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String? _email;
  late String? _password;
  final String email = 'admin@esprit.tn';
  final String password = 'admin';
  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // login UI
    final email = TextFormField(
      onSaved: (String? value) {
        _email = value;
      },
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.emailAddress,
      autofocus: true,
      decoration: InputDecoration(
        hintText: 'Email',
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryDark),
          borderRadius: BorderRadius.circular(32.0),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(32.0),
        ),
        filled: true,
        fillColor: AppColors.darkwhite,
        prefixIcon: const Icon(
          Icons.email,
          color: AppColors.darkgray,
        ),
      ),
      validator: (value) {
        const String pattern = r'^[a-zA-Z0-9]+.[a-zA-Z0-9]+@esprit\.tn$';
        RegExp regExp = RegExp(pattern);
        if (value == null || value.isEmpty) {
          return 'Please enter an email address';
        }
        if (!regExp.hasMatch(value)) {
          return 'Please enter an email address from esprit.tn';
        }
        return null;
      },
    );

    final password = TextFormField(
      obscureText: true,
      onSaved: (String? value) {
        _password = value;
      },
      minLines: 1,
      maxLines: 1,
      keyboardType: TextInputType.visiblePassword,
      autofocus: true,
      decoration: InputDecoration(
        hintText: 'password',
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.primaryDark),
          borderRadius: BorderRadius.circular(32.0),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(32.0),
        ),
        filled: true,
        fillColor: AppColors.darkwhite,
        prefixIcon: const Icon(
          Icons.lock,
          color: AppColors.darkgray,
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        }
        return null;
      },
    );

    final rememberMe = Container(
      child: Row(
        children: [
          Checkbox(
            value: _rememberMe,
            onChanged: (value) {
              setState(() async {
                _rememberMe = value!;
                // saved in shared preferences to be used later
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.setString("rememberme", _rememberMe.toString());
              });
            },
            activeColor: AppColors.primaryDark,
          ),
          const Text(
            'Remember me',
            style: TextStyle(
              color: AppColors.darkgray,
              fontSize: 17.0,
              fontFamily: 'Mukata Malar',
            ),
          ),
        ],
      ),
    );

    final loginButton = Container(
      //padding: const EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
      width: double.infinity,
      child: gradientButton(
        borderRadius: BorderRadius.circular(20.0),
        width: double.infinity,
        height: 45.0,
        gradient: AppColors.gradient1,
        child: const Text(
          'SIGN IN',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontFamily: 'Mukata Malar',
          ),
        ),
        onPressed: () {
          if (_keyForm.currentState!.validate()) {
            _keyForm.currentState!.save();
            if (_email == _email || _password == _password) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => WebMain()),
              );
            } /*else {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("Error"),
                    content: const Text("Wrong email or password"),
                    actions: [
                      TextButton(
                        child: const Text("Close"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            }*/
          }
        },
      ),
    );

    return Scaffold(
      body: Container(
        color:
            Color.fromARGB(255, 255, 255, 255), // set the background color here
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double screenWidth = constraints.maxWidth;
            bool isSmallScreen = screenWidth < 768;
            return Row(
              children: [
                if (!isSmallScreen)
                  Expanded(
                      child: Column(
                    children: [
                      SizedBox(height: 100.0),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('WELCOME  TO  OUR  COMMUNITY !',
                            style: TextStyle(
                              color: Color.fromARGB(255, 92, 2, 2),
                              fontSize: isSmallScreen ? 24.0 : 36.0,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Mukta Malar',
                            )),
                      ),
                      SizedBox(height: 20.0),
                      Image.asset(
                        'Assets/images/welcome.png',
                        height: 400.0,
                      ),
                    ],
                  )),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: isSmallScreen ? 30.0 : 60.0,
                      vertical: isSmallScreen ? 80.0 : 100.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                'Login To Your Account',
                                style: TextStyle(
                                  fontSize: isSmallScreen ? 24.0 : 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Image.asset(
                            'Assets/images/logo.png',
                            height: 100.0,
                          ),
                          SizedBox(height: 10.0),
                          Form(
                            key: _keyForm,
                            child: Column(
                              children: [
                                Container(
                                    width: double.infinity,
                                    margin: const EdgeInsets.fromLTRB(
                                        35, 0, 35, 20),
                                    child: email),
                                Container(
                                  width: double.infinity,
                                  margin:
                                      const EdgeInsets.fromLTRB(35, 20, 35, 10),
                                  child: password,
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(30, 10, 40, 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      //add a chekbox here
                                      Checkbox(
                                          activeColor: AppColors.primaryDark,
                                          value: _rememberMe,
                                          onChanged: (newValue) {
                                            setState(() {
                                              _rememberMe = newValue ?? false;
                                            });
                                          }),
                                      Text('Remember me',
                                          style: TextStyle(
                                            color: AppColors.darkgray,
                                            fontSize: 14,
                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  //width: double.infinity,
                                  margin:
                                      const EdgeInsets.fromLTRB(35, 35, 35, 20),
                                  child: loginButton,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
