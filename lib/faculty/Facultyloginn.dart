import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

// class Login extends StatelessWidget {
//   Login({super.key});
//   @override
//   State<Login> createState()=>_LoginState();
//   }
// class _LoginState extends State<Login>{
//   final TextEditingController _emailController=TextEditingController(text: "");
//   final TextEditingController _passwordController=TextEditingController(text: "");
//   final TextEditingController _usernameController=TextEditingController();
//   var formkey=GlobalKey<FormState>();
// }


 final TextEditingController _emailController=TextEditingController(text: "");
  final TextEditingController _passwordController=TextEditingController(text: "");
  final TextEditingController _usernameController=TextEditingController();
  var formkey=GlobalKey<FormState>();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),color:const Color.fromARGB(255, 200, 195, 250),
              ),
              width: 400,
              height: 400,
              
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("LOGIN",style: TextStyle(fontSize: 30,color:  Color.fromARGB(255, 47, 45, 74),fontWeight: FontWeight.bold,fontStyle: FontStyle.normal)),const SizedBox(height: 10,),
                    TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email),
                        labelText: 'Email',
                        labelStyle: const TextStyle(color: Colors.black),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.7),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.lock),
                        labelText: 'Password',
                        labelStyle: const TextStyle(color: Colors.black),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.7),
                        border:OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                        )
                    ),
                    ),
                     const SizedBox(height: 5),
                TextButton(
                  onPressed: () {
                    print("forget Password");
                    // Navigate to the Forgot Password page
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                    // );
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                
                    const SizedBox(height: 10),
                    ElevatedButton(onPressed: (){
                        ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Viewing file...')),
                      );
                    }, child: const Text('Login',style: TextStyle(color:Colors.black),))
                  ],
                ),
              ),
            ),
          ),
        ),
      );
  }
}