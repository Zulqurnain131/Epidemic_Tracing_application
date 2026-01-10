import 'package:epidemic_tracing_application/widgets/custom_button.dart';
import 'package:epidemic_tracing_application/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final _formKey = GlobalKey<FormState>();
  final firstnamecontroller = TextEditingController();
  final lastnamecontroller = TextEditingController();
  final Emailcontroller = TextEditingController();
  final Phonenumbercontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final confirmpasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, size: 28),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),

                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Let's Get You Registered",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  SizedBox(height: 30),

                  CustomTextField(
                    hinttext: "First Name",
                    prefixIcon: Icons.person_3,
                    controller: firstnamecontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "First Name is required";
                      }
                      return null;
                    },
                  ),

                  SizedBox(height: 20),

                  CustomTextField(
                    hinttext: "Last Name",
                    prefixIcon: Icons.person_3,
                    controller: lastnamecontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Last Name is required";
                      }
                      return null;
                    },
                  ),

                  SizedBox(height: 20),

                  CustomTextField(
                    hinttext: "Email",
                    prefixIcon: Icons.email,
                    controller: Emailcontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email is required";
                      }
                      if (!value.contains("@")) {
                        return "Enter Valid Email";
                      }
                      return null;
                    },
                  ),

                  SizedBox(height: 20),

                  CustomTextField(
                    hinttext: "Phone Number",
                    prefixIcon: Icons.phone,
                    controller: Phonenumbercontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Phone Number is required";
                      }
                      if (value.length < 11) {
                        return "Minimum Eleven Numbers";
                      }
                      return null;
                    },
                  ),

                  SizedBox(height: 20),

                  CustomTextField(
                    hinttext: "Password",
                    isPassword: true,
                    controller: passwordcontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password is required";
                      }
                      if (value.length < 8) {
                        return "Minimum 8 characters";
                      }
                      return null;
                    },
                  ),

                  SizedBox(height: 20),

                  CustomTextField(
                    hinttext: "Confirm Password",
                    isPassword: true,
                    controller: confirmpasswordcontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Confirm Password is required";
                      }
                      if (value.length < 8) {
                        return "Minimum 8 characters";
                      }
                      if (value != passwordcontroller.text) {
                        return "Passwords do not match";
                      }
                      return null;
                    },
                  ),

                  SizedBox(height: 20),

                  CustomButton(
                    text: "Create Account",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Signup API here
                      }
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
