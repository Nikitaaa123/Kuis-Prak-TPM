import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State createState() => loginState();
}

class loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nikita Alicia"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            const Padding(padding: EdgeInsets.only(top: 20.0)),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                hintText: "Username",
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                hintText: "Password",
              ),
              obscureText: true,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  child: const Text("Login"),
                  textColor: Colors.white,
                  color: Colors.teal[400],
                  onPressed: () {},
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            TextButton(onPressed: () {},
                child: const Text("Forgot Password?"))
          ],
        ),
      ),
    );
  }
}

