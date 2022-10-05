import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login_ui/dashboard.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Image(
                      height: 180,
                      width: 180,
                      image: AssetImage('Assets/img.png')
                  )
                ],

              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Create Account',  style: TextStyle(

                fontSize: 27,

              ),
              ),
              const SizedBox(
                height: 40,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(


                  decoration: InputDecoration(
                      hintText: 'Enter Your Name',
                      filled: true,
                      prefixIcon: Icon(Icons.email_outlined),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),

                      )
                  ),




                ),
              ),
              const SizedBox(
                height: 20,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(


                  decoration: InputDecoration(
                      hintText: 'Enter Your Email',
                      filled: true,
                      prefixIcon: Icon(Icons.email_outlined),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),

                      )
                  ),




                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  obscureText: true,

                  decoration: InputDecoration(
                      hintText: 'Enter Your Password',
                      filled: true,
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),

                      )
                  ),




                ),
              ),
              const SizedBox(
                height: 40,
              ),

              InkWell(
                child: Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(child: Text('Sign Up')),


                ),
                onTap: ()
    {


                  Navigator.push(context,MaterialPageRoute(builder: (context)=> DashBoard()));
                },
              )
            ],

          ),
        ),
      ),

    );
  }
}
