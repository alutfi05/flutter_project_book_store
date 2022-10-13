import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';
import 'package:flutter_project_book_store/api/api_service.dart';
import 'package:flutter_project_book_store/config.dart';
import 'package:flutter_project_book_store/utils/const.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isAsyncCallProcess = false;
  static final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool hidePassword = true;
  bool isRemember = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ProgressHUD(
          inAsyncCall: isAsyncCallProcess,
          opacity: 0.3,
          key: UniqueKey(),
          child: Form(
            key: globalKey,
            child: _loginUI(),
          ),
        ),
      ),
    );
  }

  Widget _loginUI() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Image.asset(
              "assets/images/digital-library-concept.png",
              // width: 150,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              "Book Store App",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              "Login",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color(0xff1bba85),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
            child: emailLoginNew(),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
            child: passwordLoginNew(),
          ),
          const SizedBox(
            height: 20,
          ),
          buttonLogin(),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                      text: "Register",
                      style: const TextStyle(
                        color: Color(0xff1bba85),
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              "/register", (route) => false);
                        }),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Center buttonLogin() {
    return Center(
      child: FormHelper.submitButton(
        "Login",
        () {
          if (validateAndSave()) {
            setState(() {
              isAsyncCallProcess = true;
            });
            APIService.loginUser(email!, password!).then(
              (response) {
                setState(() {
                  isAsyncCallProcess = false;
                });

                if (response) {
                  FormHelper.showSimpleAlertDialog(
                    context,
                    Config.appName,
                    "Logged-In Succesfully",
                    "Ok",
                    () {
                      Navigator.of(context).pop();
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/home", (route) => false);
                    },
                  );
                } else {
                  FormHelper.showSimpleAlertDialog(
                    context,
                    Config.appName,
                    "Invalid E-Mail or Password",
                    "Ok",
                    () {
                      Navigator.of(context).pop();
                    },
                  );
                }
              },
            );
          }
        },
        btnColor: const Color(0xff1bba85),
        borderColor: Colors.white,
        txtColor: Colors.white,
        borderRadius: 20,
      ),
    );
  }

  Widget passwordLoginNew() {
    return TextFormField(
      validator: ((value) {
        if (value == null || value.isEmpty) {
          return '* required';
        }
        return null;
      }),
      onSaved: (newValue) {
        password = newValue.toString().trim();
      },
      obscureText: hidePassword,
      style: TextStyle(color: AppConstants.headingColor),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppConstants.backgroundColor,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppConstants.primaryColor)),
        labelText: 'Password',
        labelStyle: TextStyle(color: AppConstants.bodyColor),
        suffixIcon: IconButton(
          icon: Icon(Icons.visibility, color: Colors.grey[400], size: 20),
          onPressed: () {
            setState(
              () {
                hidePassword = !hidePassword;
              },
            );
          },
        ),
      ),
    );
  }

  Widget emailLoginNew() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '* Required';
        }
        bool emailValid = RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value);

        if (!emailValid) {
          return "* Please Input Correct Email";
        }
        return null;
      },
      onSaved: (onSaved) {
        email = onSaved.toString().trim();
      },
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: AppConstants.headingColor),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppConstants.backgroundColor,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppConstants.primaryColor)),
        hoverColor: const Color(0xFF1BBA85),
        labelText: 'Email',
        labelStyle: TextStyle(color: AppConstants.bodyColor),
        suffixIcon: Icon(
          Icons.mail,
          color: Colors.grey[400],
          size: 20,
        ),
      ),
    );
  }

  // Widget passwordLogin() {
  //   return FormHelper.inputFieldWidget(
  //     context,
  //     "password",
  //     "Password",
  //     (onValidate) {
  //       if (onValidate.isEmpty) {
  //         return "* Required";
  //       }

  //       return null;
  //     },
  //     (onSaved) {
  //       password = onSaved.toString().trim();
  //     },
  //     showPrefixIcon: true,
  //     prefixIcon: const Icon(Icons.lock_open),
  //     borderRadius: 10,
  //     contentPadding: 15,
  //     fontSize: 14,
  //     prefixIconPaddingLeft: 10,
  //     borderColor: Colors.grey.shade200,
  //     prefixIconColor: Colors.black,
  //     hintFontSize: 14,
  //     hintColor: Colors.black.withOpacity(.6),
  //     backgroundColor: Colors.grey.shade100,
  //     borderFocusColor: const Color(0xff1bba85),
  //     obscureText: hidePassword,
  //     suffixIcon: IconButton(
  //       onPressed: () {
  //         setState(() {
  //           hidePassword = !hidePassword;
  //         });
  //       },
  //       color: Colors.redAccent.withOpacity(.4),
  //       icon: Icon(
  //         hidePassword ? Icons.visibility_off : Icons.visibility,
  //       ),
  //     ),
  //   );
  // }

  // Widget emailLogin() {
  //   return FormHelper.inputFieldWidget(
  //     context,
  //     "email",
  //     "E-Mail",
  //     (onValidate) {
  //       if (onValidate.isEmpty) {
  //         return "* Required";
  //       }

  //       bool emailValid = RegExp(
  //               r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
  //           .hasMatch(onValidate);

  //       if (!emailValid) {
  //         return "Invalid E-mail";
  //       }

  //       return null;
  //     },
  //     (onSaved) {
  //       email = onSaved.toString().trim();
  //     },
  //     showPrefixIcon: true,
  //     prefixIcon: const Icon(Icons.email_outlined),
  //     borderRadius: 10,
  //     contentPadding: 15,
  //     fontSize: 14,
  //     prefixIconPaddingLeft: 10,
  //     borderColor: Colors.grey.shade200,
  //     prefixIconColor: Colors.black,
  //     hintFontSize: 14,
  //     hintColor: Colors.black.withOpacity(.6),
  //     backgroundColor: Colors.grey.shade100,
  //     borderFocusColor: const Color(0xff1bba85),
  //   );
  // }

  bool validateAndSave() {
    final form = globalKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }
}
