import 'package:flutter/material.dart';
import 'package:sample_project/screens/homepage.dart';
import 'package:sample_project/screens/loginPage.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/background5.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            top: MediaQuery.of(context).size.height * 0.35,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 30, bottom: 30), 
                        child: Text(
                          'Create New Account', 
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyLarge!.color,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: TextField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            labelText: 'Username',
                            labelStyle: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
                            filled: true,
                            fillColor: Theme.of(context).colorScheme.primary,
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 12.0,
                              horizontal: 16.0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color:Theme.of(context).colorScheme.secondary, width: 1.0),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Theme.of(context).colorScheme.onPrimary, width: 2.0),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onSecondary),
                            filled: true,
                            fillColor: Theme.of(context).colorScheme.primary,
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 12.0,
                              horizontal: 16.0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(
                                  color:
                                      Theme.of(context).colorScheme.secondary, width: 1.0),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary, width: 2.0),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          obscureText: true,
                        ),
                      ),
                      SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: TextField(
                          controller: _mobileNumberController,
                          decoration: InputDecoration(
                            labelText: 'Mobile Number',
                            labelStyle: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onSecondary),
                            filled: true,
                            fillColor: Theme.of(context).colorScheme.primary,
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 12.0,
                              horizontal: 16.0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color:Theme.of(context).colorScheme.secondary, width: 1.0),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary, width: 2.0),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          obscureText: true,
                        ),
                      ),
                      SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: TextField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onSecondary),
                            filled: true,
                            fillColor: Theme.of(context).colorScheme.primary,
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 12.0,
                              horizontal: 16.0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color:Theme.of(context).colorScheme.secondary, width: 1.0),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary, width: 2.0),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          obscureText: true,
                        ),
                      ),
                      SizedBox(height: 25),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.secondary,
                          foregroundColor: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: Text('Register'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        child: Text(
                          'Already have an account ? Log in',
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyLarge!.color,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


