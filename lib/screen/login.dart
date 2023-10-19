import 'package:flutter/material.dart';
import 'package:loginpage/screen/Sharedpreference/sharedprefernce.dart';
import 'package:loginpage/screen/home.dart';
import 'package:loginpage/screen/signup.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

final formKey = GlobalKey<FormState>();
String username = "";
String password = "";

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(18),
          child: ListView(
            children: [
              Column(
                children: [
                  Image.asset("assets/images/loginimg.png"),
                  const Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                  ),
                  const Text("Make it work,make it right,make it fast."),
                  const SizedBox(
                    height: 20,
                  ),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          onChanged: (value) {
                            username = value;
                          },
                          decoration: InputDecoration(
                              labelText: "Username",
                              hintText: "Enter your Username",
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder()),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter the username";
                            }
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          onChanged: (value) {
                            password = value;
                          },
                          obscureText: true,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: "password",
                              hintText: "password",
                              prefixIcon: Icon(Icons.fingerprint),
                              suffixIcon: Icon(Icons.remove_red_eye),
                              border: OutlineInputBorder()),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter the password";
                            } else if (value.length < 6) {
                              return "Password must be 6 character";
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Signuppage(),
                        ));
                      },
                      child: Text("Sign Up"),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      String SHuser = "";
                      String SHpass = "";
                      if (formKey.currentState!.validate()) {
                        await SharedPreferenceClass.getusername().then((value) {
                          SHuser = value!;
                        });
                        await SharedPreferenceClass.getpassword().then((value) {
                          SHpass = value!;
                        });
                        if (username == SHuser && password == SHpass) {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ));
                        } else {
                          ShowSnackBar(context, Colors.red,
                              "Username and password is incorrect");
                        }
                      }
                    },
                    child: Text("Login"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      minimumSize: MaterialStateProperty.all(Size(500, 50)),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
