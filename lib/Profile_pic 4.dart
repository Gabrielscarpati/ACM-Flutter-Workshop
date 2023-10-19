import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget{
  const ProfileScreen ({super.key});

  @override
  Widget build(BuildContext context){

    String hintName = "Type name here...";
    String hintEmail = "Type email here...";
    String hintPhone = "Type phone here...";
    String hintAddres = "Type address here...";
    double spacing =12.0;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,


        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(12),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),

              backgroundColor: Colors.yellow.shade600,
              padding: const EdgeInsets.all(15),

            ),
            child: const Text(
              'Edit Profile',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )
            )
          )
        ),

        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          title: const Text(
            'App Bar',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
        ),

        //Padding Starts here

        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column( 
            children: [
              SizedBox(height: spacing * 2),
              Stack(
                children: [

                  //Profile starts here

                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1604200213928-ba3cf4fc8436?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3BpZGVybWFufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60%27',
                    ),
                  )

                  
                ],
              )
            ],
          ),
        )


      )
    );
  }

}
