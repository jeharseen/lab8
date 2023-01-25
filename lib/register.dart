import 'package:flutter/material.dart';
import 'package:lab8/services/auth_service.dart';


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

          //-----------------Username--------------------
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(labelText: "Password"),
            obscureText: true,

          ),
          
          //-----------------Password--------------------
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(labelText: "Email"),

          ),

          //-----------------Email------------------------
          ElevatedButton(onPressed: () {
            AuthService.registerFunc(_emailController.text, _passwordController.text).then((value){
              Navigator.pop(context);
            });
          }, child: const Text("Summit")),
          ElevatedButton(onPressed: () {
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => const Myregister()
                
                ),

              //-------------------------button summit-----------------
              );
          }, child: const Text("register")),
        ],
       ),
       ),
    );
  }
}