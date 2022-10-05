import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'signUp.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              const Text('Welcome  to login Screen',  style: TextStyle(

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
                      hintText: 'Enter Yours Email',
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
                      hintText: 'Enter Yours Password',
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
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric( horizontal: 20.0),
                child: Row(
                  children: [
                    TextButton(
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> SignUp()));
                    },

                        child: Text('Already have account?')),

                  ],
                ),

              ),
              InkWell(
                child: Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(child: Text('Login')),


                ),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> DashBoard()));
                },
              ),
         const     SizedBox(
                height: 50,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(

                    radius: 25,
                    backgroundColor: Colors.white,
                    backgroundImage:AssetImage('Assets/google.png'),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    backgroundImage:AssetImage('Assets/fb.png'),
                  )
                ],
              )
            ],

          ),
        ),
      ),

    );
  }
}
//nbbj