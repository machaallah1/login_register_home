import 'package:flutter/material.dart';
import 'package:login_register_home/screens/signin_screen.dart';
import 'package:login_register_home/screens/signup_screen.dart';
import 'package:login_register_home/widgets/my_button.dart';
import 'package:login_register_home/widgets/my_widget.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return MyWidget(
      child: Column(
        children: [
          Flexible(
            flex: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 40.0,
                ),
              child: Center(
                child: RichText(
                textAlign: TextAlign.center,
                text:const TextSpan(
                  children:[
                    TextSpan(
                      text:"Content de te revoir!\n",
                      style: TextStyle(fontSize: 45.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text:
                      '\nSaisissez vos informations personnelles sur votre compte',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )
                    )
                  ],)
                ),
              ),
          ),
          ),
          const Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                 Expanded(child: MyButton(
                  buttonText: 'Se Connecter',
                  onTap: SigninScreen(),
                  color: Colors.transparent,
                  textColor: Colors.white,
                 ),
                 ),
                 Expanded(child: MyButton(
                  buttonText: 's\'inscrire',
                  onTap: SignupScreen(),
                  color: Colors.white,
                  textColor: Colors.blue,
                 ),
                 ),
                ],
              ),
            ),
            ),
        ],
      ),
    );
  }
}