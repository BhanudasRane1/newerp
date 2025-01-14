import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'SignUp.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late String _email, _password;

  // checkAuthentification() async {
  //   _auth.authStateChanges().listen((user) {
  //     if (user != null) {
  //       print(user);

  //       Navigator.pushReplacementNamed(context, "/");
  //     }
  //   });
  // }

  @override
  void initState() {
    super.initState();
    // this.checkAuthentification();
  }

  // login() async {
  //   if (_formKey.currentState!.validate()) {
  //     _formKey.currentState!.save();

  //     try {
  //       await _auth.signInWithEmailAndPassword(
  //           email: _email, password: _password);
  //     } catch (e) {
  //       var message;
  //       showError(message);
  //       print(e);
  //     }
  //   }
  // }

  // showError(String errormessage) {
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: Text('ERROR'),
  //           content: Text(errormessage),
  //           actions: <Widget>[
  //             FlatButton(
  //                 onPressed: () {
  //                   Navigator.of(context).pop();
  //                 },
  //                 child: Text('OK'))
  //           ],
  //         );
  //       });
  // }

  // navigateToSignUp() async {
  //   Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("MVPs"),
        // ),
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            // Container(
            //   // height: 400,
            //   child: Image(
            //     image: AssetImage("images/logo.png"),
            //     fit: BoxFit.contain,
            //   ),
            // ),
            Container(
              child: Form(
                // key: _formKey,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: TextFormField(
                          validator: (input) {
                            if (input!.isEmpty) return 'Enter Email';
                          },
                          decoration: const InputDecoration(
                              labelText: 'Email',
                              prefixIcon: Icon(Icons.email)),
                          onSaved: (input) => _email = input!),
                    ),
                    Container(
                      child: TextFormField(
                          validator: (input) {
                            if (input!.length < 6) {
                              return 'Provide Minimum 6 Character';
                            }
                          },
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock),
                          ),
                          obscureText: true,
                          onSaved: (input) => _password = input!),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: null,
                      // child: const Text('Disabled'),
                      // padding: const EdgeInsets.fromLTRB(70, 10, 70, 10),

                      child: const Text('LOGIN',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                      // color: Colors.orange,
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(20.0),
                      // ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              child: const Text('Create an Account?'),
              onTap: null,
            )
          ],
        ),
      ),
    ));
  }
}
