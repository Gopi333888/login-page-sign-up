import 'package:flutter/material.dart';
import 'package:loginpage/screen/Sharedpreference/sharedprefernce.dart';
import 'package:loginpage/screen/home.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

final formkey = GlobalKey<FormState>();
String username = "";
String password = "";
String cpassword = "";

class _SignuppageState extends State<Signuppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            Center(
              child: Image.asset(
                "assets/images/signupimg.png",
                height: 250,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Create New Account.",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Make it work,make it right,make it fast.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: formkey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Username",
                        hintText: "Enter your Username",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter the username";
                      }
                    },
                    onChanged: (value) {
                      username = value;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter your Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter the password";
                      } else if (value.length < 6) {
                        return "Password must be 6 character";
                      }
                    },
                    onChanged: (value) {
                      password = value;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Confirm Password",
                        hintText: "Confirm your Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter the password";
                      } else if (value.length < 6) {
                        return "Password must be 6 character";
                      }
                    },
                    onChanged: (value) {
                      cpassword = value;
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Login?",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(500, 50)),
                  backgroundColor: MaterialStateProperty.all(Colors.black)),
              onPressed: () async {
                if (formkey.currentState!.validate()) {
                  await SharedPreferenceClass.saveusername(username);
                  await SharedPreferenceClass.savepassword(password);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
                }
              },
              child: const Text("Register"),
            )
          ],
        ),
      )),
    );
  }
}

void ShowSnackBar(context, color, message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    backgroundColor: color,
    duration: const Duration(seconds: 5),
  ));
}
