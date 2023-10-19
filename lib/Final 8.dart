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
    String hintAddress = "Type address here...";
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
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1604200213928-ba3cf4fc8436?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3BpZGVybWFufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60%27',
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child:
                      Container(
                        height: 34,
                        width: 34,
                        decoration: BoxDecoration(
                          color: Colors.yellow.shade600,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Center(
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            iconSize: 20,
                            color: Colors.black,
                            onPressed: () {},
                            icon: const Icon(Icons.camera_alt),
                          ),
                        ),
                      ),
                  ),
                ],
              ),
              //Textboxes Start here
              SizedBox(height: spacing),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 5),
                      color: Colors.black12.withOpacity(.12),
                      spreadRadius: 5,
                      blurRadius: 10,
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      const SizedBox(width: 16),
                      const Icon(Icons.person),
                      const SizedBox(width: 16),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: hintName,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                    ],
                  ),
                ),
              ),
              //Email starts here
              SizedBox(height: spacing),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 5),
                      color: Colors.black12.withOpacity(.12),
                      spreadRadius: 5,
                      blurRadius: 10,
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      const SizedBox(width: 16),
                      const Icon(Icons.email),
                      const SizedBox(width: 16),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: hintEmail,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                    ],
                  ),
                )
              ),

              //Phone starts here

              SizedBox(height: spacing),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 5),
                      color: Colors.black12.withOpacity(.12),
                      spreadRadius: 5,
                      blurRadius: 10,
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      const SizedBox(width: 16),
                      const Icon(Icons.phone),
                      const SizedBox(width: 16),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: hintPhone,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                    ],
                  ),
                )
              ),

              //Address starts here

              SizedBox(height: spacing),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 5),
                      color: Colors.black12.withOpacity(.12),
                      spreadRadius: 5,
                      blurRadius: 10,
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      const SizedBox(width: 16),
                      const Icon(Icons.location_city),
                      const SizedBox(width: 16),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: hintAddress,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                    ],
                  ),
                )
              ),



            ],
          ),
        )


      )
    );
  }

}
