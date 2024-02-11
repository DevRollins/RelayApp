import 'package:flutter/material.dart';
import 'package:relay_app/auth.dart';
import 'package:relay_app/components/settings_button.dart';

void main() {
  runApp(SettingsPage());
}



class SettingsPage extends StatefulWidget {
  SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final usernameController = TextEditingController();

  
  void changePicture() async {
   showDialog(context: context, builder: (context){
    return AuthPage();
     
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
                'Setting\'s Page',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 50,
                ),
              ),

              Text(
                'Profile',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 25,
                ),
              ),

              Row(children: [
                Text(
                'PUT A FUCKING PICTURE HERE',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
                ),

                //make a button and align to end
                
              ],),

              Row(children: [
                Text(
                'Name: Dev',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
                ),

                //make a button and align to end
              ],),

              Row(children: [
                Text(
                'Bio: Sup Nigga',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
                ),

                //make a button and align to end
              ],),

              Text(
                'Account',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 25,
                ),
              ),

              Row(children: [
                Text(
                'Email: devR@gmail.com',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
                ),

                //make a button and align to end
              ],),

              Row(children: [
                Text(
                'IP Adress: 758-79-2301',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                ),
                ),

                //make a button and align to end
              ],),

          ]),)

    );
  }
}