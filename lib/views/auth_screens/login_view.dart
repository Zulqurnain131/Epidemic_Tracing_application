import 'package:epidemic_tracing_application/views/auth_screens/forgetpassword_view.dart';
import 'package:epidemic_tracing_application/views/auth_screens/signup_view.dart';
import 'package:epidemic_tracing_application/widgets/custom_button.dart';
import 'package:epidemic_tracing_application/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.only(top: 120),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "EpiTrace",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 42, 77, 107),
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Your health tracked with precision",
                    style: TextStyle(
                     color: Colors.grey[500],
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 45),
                  CustomTextField(
                    hinttext: "Email",
                    prefixIcon: Icons.email,
                    controller: emailcontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email is required";
                      }
                      if (!value.contains("@")) {
                        return "Enter valid Email";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 30),
                  CustomTextField(
                    hinttext: "Password",
                    controller: passwordcontroller,
                    isPassword: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password is requird";
                      }
                      if (value.length < 8) {
                        return "Minimum 8 characters";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetpasswordView(),));
      
                        },
                        child: Text(
                          "Forget Password",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 27, 108, 179),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  CustomButton(
                    text: "Sign In",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Login API here
                      }
                    },
                  ),
                  SizedBox(height: 30),
                  CustomButton.customOutlineButton(
                    text: "Create Account",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupView()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
