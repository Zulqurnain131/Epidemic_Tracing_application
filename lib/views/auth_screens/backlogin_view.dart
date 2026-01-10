import 'package:epidemic_tracing_application/views/auth_screens/login_view.dart';
import 'package:epidemic_tracing_application/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BackloginView extends StatefulWidget {
  const BackloginView({super.key});

  @override
  State<BackloginView> createState() => _BackloginViewState();
}

class _BackloginViewState extends State<BackloginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Ready to Explore !",
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Your account password has been changed successfully.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            CustomButton(
              text: "Back to Login",
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) =>LoginView()),
                  (route) => false, 
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
