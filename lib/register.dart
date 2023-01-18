import 'package:flutter/material.dart';

class Myregister extends StatefulWidget {
  const Myregister({super.key});

  @override
  State<Myregister> createState() => _MyregisterState();
}

class _MyregisterState extends State<Myregister> {
  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    TextEditingController _username = TextEditingController();
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
            controller: _username,
            decoration: InputDecoration(labelText: "Username"),
          ),
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(labelText: "Password"),
            obscureText: true,
          ),TextFormField(
            controller: _emailController,
            decoration: InputDecoration(labelText: "Email"),
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Summit")),
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