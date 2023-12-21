import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pbl/BottomNav/bottomnav.dart';
import 'package:pbl/Color/color.dart';
import 'package:pbl/Login/masuk_screen.dart';
import 'package:pbl/Profile/settings.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  File? _image;
  TextEditingController _usernameController = TextEditingController(text: "Fahrul Rozi");

  Future<void> _signOut() async {
    await _auth.signOut();
  }

  Future<void> _getImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: appGrey5),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: _getImageFromGallery,
                          child: Container(
                            width: 130,
                            height: 150,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: _image != null
                                  ? DecorationImage(
                                      image: FileImage(_image!),
                                      fit: BoxFit.cover,
                                    )
                                  : DecorationImage(
                                      image: AssetImage(
                                        'assets/icon/Rectangle 9.png',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(children: [Text("Username",style: TextStyle(color: appGrey3, fontSize:15 ),)],),
                              SizedBox(height: 10,),
                              GestureDetector(
                                onTap: () {
                                  _editUsername(context);
                                },
                                child: EditableText(
                                  controller: _usernameController,
                                  focusNode: FocusNode(),
                                  style: TextStyle(
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold,
                                    color: appHitam,
                                  ),
                                  cursorColor: appHitam, backgroundCursorColor: appPutih,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.edit_outlined,
                              size: 40,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNav(),
                        ),
                      );
                    },
                    child: Container(
                      width: 350,
                      height: 130,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: appPutih,
                        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            height: 70,
                            decoration: BoxDecoration(
                              color: appPurplesoft,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.account_balance_wallet,
                                  color: appHijau,
                                  size: 50,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Menu Utama",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Settings(),
                        ),
                      );
                    },
                    child: Container(
                      width: 350,
                      height: 130,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: appPutih,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            height: 70,
                            decoration: BoxDecoration(
                              color: appPurplesoft,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.settings,
                                  color: appHijau,
                                  size: 50,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Setting",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await _signOut();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    },
                    child: Container(
                      width: 350,
                      height: 130,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: appPutih,
                        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            height: 70,
                            decoration: BoxDecoration(
                              color: appPurplesoft,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.exit_to_app_rounded,
                                  color: appRed,
                                  size: 50,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Keluar",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> _editUsername(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Username'),
          content: TextField(
            controller: _usernameController,
            decoration: InputDecoration(labelText: 'New Username'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Save the updated username logic goes here
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}
