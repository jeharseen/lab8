import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lab8/register.dart';

import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    TextEditingController _passwordController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(padding:
       EdgeInsets.all(10),
       child: ListView(
        children: [
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(labelText: "Email"),
          ),
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(labelText: "Password"),
            obscureText: true,
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Login")),
          ElevatedButton(onPressed: () {
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => const Myregister()
                
                ),
              );
          }, child: const Text("register")),
        ],
       ),
       ),
    );
  }
}