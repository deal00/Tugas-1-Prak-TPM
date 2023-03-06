import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  Widget _logoFlutter(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 300),
      child: Center(
                child: SizedBox(
                    width: 380,
                    height: 180,
                    child: Image.asset('assets/images/logo.png'),
                    ),
              ),
    );

  }

  Widget _emailField(){
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
         child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                    labelText: '  Email',
                    hintText: 'Enter your email'),
              ),
      );
  }

  Widget _passwordField(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(

                obscureText: true,
                decoration: InputDecoration(

                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                    labelText: '  Password',
                    hintText: 'Enter your password'),

              ),
    );
  }

  Widget _loginButton(){
    return Container(
      padding: EdgeInsets.only(top:30, bottom: 10, left:50, right:50),
      child :
                SizedBox(

                  height: 40,

                  child :
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,

                    ),
                    onPressed: () {

                    },

                    child: const Text(
                      'Log In',
                      style: TextStyle(color: Colors.white, fontSize: 20,
                      ),
                    ),

                  ),
                )
    );
  }

  Widget _forgotPass(){
    return Container(

      child : TextButton(
              onPressed: (){

              },
              child: Text(
                'Forgot password?',
                style: TextStyle(color: Colors.grey[700], fontSize: 15),
              ),
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: ListView(
        children: <Widget>[
          _logoFlutter(),
          _emailField(),
          _passwordField(),
          _loginButton(),
          _forgotPass(),
        ],
        

      ),
    );
  }
}