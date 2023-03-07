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
    Color surfasceColor = const Color(0x0dffffff);
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
          primaryColor: Colors.red.shade400,
          dividerColor: surfasceColor,
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

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum _SkillType {
  photoshop,
  xd,
  illustrator,
  afterEffect,
  lightRoom,
}

class _MyHomePageState extends State<MyHomePage> {
  _SkillType _skill = _SkillType.photoshop;
  void updateSelectedSkill(_SkillType skillType) {
    setState(() {
      _skill = skillType;
    });
  }

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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  Expanded(
                    child: Column(
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
                            const SizedBox(
                              width: 8,
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
                  ),
                  Icon(
                    CupertinoIcons.heart,
                    color: Theme.of(context).primaryColor,
                  )
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
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 16, 32, 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'skills',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  const Icon(
                    CupertinoIcons.chevron_down,
                    size: 10,
                  )
                ],
              ),
            ),
            Center(
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 8,
                runSpacing: 8,
                children: [
                  Skill(
                    type: _SkillType.photoshop,
                    title: 'Photoshop',
                    imagePath: 'assets/images/app_icon_01.png',
                    shadowColor: Colors.blue,
                    isActivate: _skill == _SkillType.photoshop,
                    onTap: () {
                      updateSelectedSkill(_SkillType.photoshop);
                    },
                  ),
                  Skill(
                      type: _SkillType.xd,
                      title: 'Adobe XD',
                      imagePath: 'assets/images/app_icon_05.png',
                      shadowColor: Colors.pink,
                      isActivate: _skill == _SkillType.xd,
                      onTap: () {
                        updateSelectedSkill(_SkillType.xd);
                      }),
                  Skill(
                      type: _SkillType.illustrator,
                      title: 'Illustrator',
                      imagePath: 'assets/images/app_icon_04.png',
                      shadowColor: Colors.orange,
                      isActivate: _skill == _SkillType.illustrator,
                      onTap: () {
                        updateSelectedSkill(_SkillType.illustrator);
                      }),
                  Skill(
                      type: _SkillType.afterEffect,
                      title: 'After Effect',
                      imagePath: 'assets/images/app_icon_03.png',
                      shadowColor: Colors.blue.shade800,
                      isActivate: _skill == _SkillType.afterEffect,
                      onTap: () {
                        updateSelectedSkill(_SkillType.afterEffect);
                      }),
                  Skill(
                      type: _SkillType.lightRoom,
                      title: 'Lightroom',
                      imagePath: 'assets/images/app_icon_02.png',
                      shadowColor: Colors.blue,
                      isActivate: _skill == _SkillType.lightRoom,
                      onTap: () {
                        updateSelectedSkill(_SkillType.lightRoom);
                      }),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 16, 32, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Personal Information',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      icon: Icon(CupertinoIcons.at),
                    ),
                  ),
                  
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      icon: Icon(CupertinoIcons.lock),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Skill extends StatelessWidget {
  final _SkillType type;
  final String title;
  final String imagePath;
  final Color shadowColor;
  final bool isActivate;
  final Function() onTap;
  const Skill({
    super.key,
    required this.type,
    required this.title,
    required this.imagePath,
    required this.shadowColor,
    required this.isActivate,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final BorderRadius borderRadius = BorderRadius.circular(12);
    return InkWell(
      borderRadius: borderRadius,
      onTap: onTap,
      child: Container(
        width: 110,
        height: 110,
        decoration: isActivate
            ? BoxDecoration(
                color: Theme.of(context).dividerColor,
                borderRadius: borderRadius,
              )
            : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: isActivate
                  ? BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: shadowColor.withOpacity(0.5),
                          blurRadius: 20,
                        ),
                      ],
                    )
                  : null,
              child: Image.asset(
                imagePath,
                width: 40,
                height: 40,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(title)
          ],
        ),
      ),
    );
  }
}
