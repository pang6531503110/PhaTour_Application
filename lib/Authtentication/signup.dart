import 'package:flutter/material.dart';
import 'package:flutter_application_1/Authtentication/login.dart';
import 'package:flutter_application_1/JsonModels/users.dart';
import 'package:flutter_application_1/SQLite/sqlite.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final username = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // We will copy the previous textfield we designed to avoid time consuming
                  const ListTile(
                    title: Text(
                      "Register New Account",
                      style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 0, 135, 231).withOpacity(.2)),
                    child: TextFormField(
                      controller: username,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username is required";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        border: InputBorder.none,
                        hintText: "Username",
                      ),
                    )),
                    Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 0, 135, 231).withOpacity(.2)),
                    child: TextFormField(
                      controller: password,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password is required";
                        }
                        return null;
                      },
                      obscureText: !isVisible,
                      decoration: InputDecoration(
                        icon: const Icon(Icons.lock),
                        border: InputBorder.none,
                        hintText: "Password",
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          icon:
                          Icon(isVisible ? Icons.visibility : Icons.visibility_off),
                        ),
                      ),
                    )
                  ),
                    Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 0, 135, 231).withOpacity(.2)),
                    child: TextFormField(
                      controller: confirmPassword,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password is required";
                        } else if (password.text != confirmPassword.text) {
                          return "Password don't match";
                        }
                        return null;
                      },
                      obscureText: !isVisible,
                      decoration: InputDecoration(
                        icon: const Icon(Icons.lock),
                        border: InputBorder.none,
                        hintText: "Confirm Password",
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          icon:
                          Icon(isVisible ? Icons.visibility : Icons.visibility_off),
                        ),
                      ),
                    )
                  ),
                  const SizedBox(height: 10),
                  Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromARGB(255, 0, 135, 231),
                  ),
                  child: TextButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        // Login method will be here!
                        final db = DatabaseHelper();
                        db.signup(Users(usrName: username.text, usrPassword: password.text)).whenComplete(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LoginScreen())
                          );
                        });
                      }
                    },
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    TextButton(
                      onPressed: () {
                        // Navigate to sign up
                        Navigator.push(
                          context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen())
                        );
                      },
                      child: const Text(
                        "LOGIN",
                        style:
                          TextStyle(color: Color.fromARGB(255, 0, 135, 231)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
