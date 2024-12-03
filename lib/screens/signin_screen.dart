import 'package:flutter/material.dart';
import 'package:login_register_home/screens/signup_screen.dart';
import 'package:login_register_home/widgets/my_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState()=>_SingnInScreenState();
}

class _SingnInScreenState extends State<SignInScreen>{
  final _formSignInKey =GlobalKey<FormState>();
  bool rememberPassword= true;
  @override
  Widget build(BuildContext context) {
    return MyWidget(
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(
              height: 10,)
              ),
          Expanded(
            flex: 7,
            child: Container(
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                )
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: _formSignInKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Welcome back',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.blue,
                      ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty){
                            return 'please enter Email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          label: const Text('Email'),
                          hintText: 'Enter Email',
                          hintStyle: const TextStyle(
                            color: Colors.black26,
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        obscureText: true,
                        obscuringCharacter: '*',
                        validator: (value) {
                          if (value == null || value.isEmpty){
                            return 'please enter Password';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          label: const Text('Password'),
                          hintText: 'Enter Password',
                          hintStyle: const TextStyle(
                            color: Colors.black26,
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                        Row(
                          children: [
                            Checkbox(
                              value: rememberPassword,
                               onChanged: (bool? value){
                                setState(() {
                                  rememberPassword=value!;
                                });
                               },
                               activeColor: Colors.blue,
                               ),
                               const Text('Remember me',
                               style: TextStyle(
                                color: Colors.black45,
                               ),
                               ),
                          ],
                        ),
                        GestureDetector(
                          child: const Text(
                            'Forget Password?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          ),
                        ),
                       ], 
                      ),
                      const SizedBox(height: 20,),
                      SizedBox(
                       width: double.infinity,
                       child: ElevatedButton(
                        onPressed: (){},
                        child: const Text('Sign in'),
                        ),
                      ),
                      const SizedBox(height: 30,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.7,
                              color: Colors.grey,
                          ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 0,),
                              child: Text('Sign up with',
                              style: TextStyle(
                                color: Colors.black45,
                              ),
                              ),
                              ),
                          SizedBox(height: 30,),
                          Expanded(
                            child: Divider(
                              thickness: 0.7,
                              color: Colors.grey,
                          ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 25,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.person),
                              Icon(Icons.phone),
                              Icon(Icons.apple),
                              Icon(Icons.facebook),
                            ],
                          ),
                      const SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Don\'t have an account?',
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context, MaterialPageRoute(
                                  builder: (e)=> const SignUpScreen(),
                                  ),
                                  );
                            },
                            child: Text('Sign up',
                            style: TextStyle(
                              color: Colors.blue[900],
                            ),),
                          )
                        ],
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