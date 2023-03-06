import 'dart:ffi';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.latoTextTheme(const TextTheme(
              // ignore: deprecated_member_use
              bodyText2: TextStyle(fontSize: 15),
              // ignore: deprecated_member_use
              bodyText1: TextStyle(
                  fontSize: 13, color: Color.fromARGB(200, 255, 255, 255)),
              // ignore: deprecated_member_use
              headline6: TextStyle(fontWeight: FontWeight.bold),
              // ignore: deprecated_member_use
              subtitle1: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
          appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
          scaffoldBackgroundColor: const Color.fromARGB(255, 30, 30, 30),
          brightness: Brightness.dark),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('curriculm Vitae'),
          actions: const [
            Icon(CupertinoIcons.chat_bubble),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 16, 0),
              child: Icon(CupertinoIcons.ellipsis_vertical),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/profile_image.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Brice Serphin',
                        // ignore: deprecated_member_use
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text('Prodoct & Print Designer'),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          
                          Icon(
                            CupertinoIcons.location,
                            // ignore: deprecated_member_use
                            color: Theme.of(context).textTheme.bodyText1!.color,
                            size: 14,
                          ),
                          Text(
                            'Paris, France',
                            // ignore: deprecated_member_use
                            style: Theme.of(context).textTheme.caption,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 0, 32, 16),
              child: Text(
                'Enthusiastic young computer Geek, Freelance Designer in love of independence, I have alot of experience in graphical projects, and always give the best of myself to bring you to success',
                // ignore: deprecated_member_use
                style: Theme.of(context).textTheme.bodyText1,
              ),
            )
          ],
        ));
  }
}
