import 'package:epidemic_tracing_application/views/auth_screens/backlogin_view.dart';
import 'package:epidemic_tracing_application/widgets/custom_button.dart';
import 'package:epidemic_tracing_application/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class NewpasswordView extends StatefulWidget {
  const NewpasswordView({super.key});

  @override
  State<NewpasswordView> createState() => _NewpasswordViewState();
}

class _NewpasswordViewState extends State<NewpasswordView> {
  final _formKey = GlobalKey<FormState>();
  final passwordcontroller = TextEditingController();
  final confirmpasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body:Form(
        key: _formKey,
        child:Center(
        child: Padding(
          padding:EdgeInsets.only(bottom: 180,left: 20,right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

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
              SizedBox(height: 60),
              Text(
                "Set New Password",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 60),
              CustomTextField(
                hinttext: "Password",
                controller: passwordcontroller,
                isPassword: true,
                validator: (value){
                  if(value==null|| value.isEmpty){
                    return "Password is requird";
                  }
                  if(value.length<8){
                    return "Minimum 8 characters";
                  }
                  if(value!=confirmpasswordcontroller.text){
                    return "Password do not match";
                  }
                  return null;
                },
              ),
              SizedBox(height: 30),
              CustomTextField(
                hinttext: "Confirm Password",
                controller: confirmpasswordcontroller,
                isPassword: true,
                validator: (value){
                  if(value==null|| value.isEmpty){
                    return "Password is requird";
                  }
                  if(value.length<8){
                    return "Minimum 8 characters";
                  }
                  if(value!=passwordcontroller.text){
                    return "Password do not match";
                  }
                  return null;
                },
              ),
              SizedBox(height: 30,),
              CustomButton(text: "Submit", onPressed: () {
                if(_formKey.currentState!.validate()){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BackloginView(),));
                  /// api code here///
                }
                
              },)
            ],
          ),
        ),
      ),
      )
    );
  }
}
