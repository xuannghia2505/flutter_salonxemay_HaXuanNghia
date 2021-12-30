import 'package:flutter/material.dart';
import 'package:qlsuabanxe/pages/home_page.dart';
import 'package:qlsuabanxe/pages/root_app.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  static Future<User> loginUsingEmailPassword(
      {@required String email,
      @required String password,
      @required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        print("No User found for that email");
      }
    }
    return user;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    TextEditingController _emailController = new TextEditingController();
    TextEditingController _passwordController = new TextEditingController();
    
    final _formkey = GlobalKey<FormState>();
    @override
    void initState() {
      _emailController = TextEditingController();
      _passwordController = TextEditingController();
      super.initState();
    }

    @override
    void dispose() {
      _emailController.dispose();
      _passwordController.dispose();
      super.dispose();
    }

    bool _showPassword = false;
    void _togglevisibility() {
      setState(() {
        _showPassword = !_showPassword;
      });
    }
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "QL Sửa xe bán xe",
                  style: TextStyle(
                      color: Color(0xFF006766),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(labelText: 'Email'),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Email is Required';
                      }
      
                      if (!RegExp(
                              r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                          .hasMatch(value)) {
                        return 'Please enter a valid email Address';
                      }
      
                      return null;
                    },
                  ),
                ],
              ),
            SizedBox(
              height: 25,
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: !_showPassword,
                    keyboardType: TextInputType.visiblePassword,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: GestureDetector(
                        onTap: () {
                          _togglevisibility();
                        },
                        child: Icon(
                          _showPassword ? Icons.visibility : Icons.visibility_off,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Password is Required';
                      }
                      if (value.length < 6) {
                        return 'Password is 6 chars required';
                      }
      
                      return null;
                    },
                  ),
                ],
              ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () async {
                  //test app
                  if (!_formkey.currentState.validate()) {
                    return;
                  }
                  User user = await loginUsingEmailPassword(
                      email: _emailController.text,
                      password: _passwordController.text,
                      context: context);
                  print(user);
                  if (user != null) {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => RootApp()));
                  }
                },
              child: Container(
                width: 141,
                height: 45,
                decoration: BoxDecoration(
                    color: Color(0xFF006766),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold),
                    ),
                    // getSvgIcon("arrow_forward_icon.svg")
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Text(
                  "Does not have an account yet?",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Text(
                  " Create One",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
