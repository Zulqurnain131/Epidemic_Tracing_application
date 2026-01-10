import 'package:epidemic_tracing_application/views/auth_screens/otpverify_view.dart';
import 'package:epidemic_tracing_application/widgets/custom_button.dart';
import 'package:epidemic_tracing_application/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class ForgetpasswordView extends StatefulWidget {
  const ForgetpasswordView({super.key});

  @override
  State<ForgetpasswordView> createState() => _ForgetpasswordViewState();
}

class _ForgetpasswordViewState extends State<ForgetpasswordView> {
  final emailcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Forget Password",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "No worries! Enter your registered email address, and we'll help you reset your password",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 50),

                CustomTextField(
                  hinttext: "Email",
                  prefixIcon: Icons.email,
                  controller: emailcontroller,
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

                SizedBox(height: 30),

                CustomButton(
                  text: "Submit",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtpverifyView(),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
