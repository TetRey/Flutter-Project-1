// import 'package:flutter/src/widgets/framework.dart';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stockfm/component/warna.dart';
import 'package:stockfm/pages/profile.dart';

import '../main.dart';

class editProfile extends StatefulWidget {
  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  // const EditProfile({super.key});
  final TextEditingController dispNameController = TextEditingController();
  // final TextEditingController profileController = TextEditingController();
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;

  String imageUrl = '';
  String icon =
      'https://i.pinimg.com/originals/83/bc/8b/83bc8b88cf6bc4b4e04d153a418cde62.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warnaNavy,
      appBar: AppBar(
        backgroundColor: warnaOren,
        title: Text(
          "STOCK FM",
          style: GoogleFonts.montserrat(
              letterSpacing: 1.5,
              fontWeight: FontWeight.w600,
              color: warnaNavy),
        ),
        centerTitle: true,
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Edit Profile",
              style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.w600, color: warnaOren),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(
                        image: NetworkImage(
                            _firebaseAuth.currentUser!.photoURL ?? icon),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromRGBO(69, 69, 69, 1),
                      ),
                      child: IconButton(
                        onPressed: () async {
                          // /Step 1:Pick image/
                          //Install image_picker
                          //Import the corresponding library

                          ImagePicker imagePicker = ImagePicker();
                          XFile? file = await imagePicker.pickImage(
                              source: ImageSource.gallery);
                          print('${file?.path}');

                          if (file == null) return;
                          //Import dart:core
                          String uniqueFileName =
                              DateTime.now().millisecondsSinceEpoch.toString();

                          // /Step 2: Upload to Firebase storage/
                          //Install firebase_storage
                          //Import the library

                          //Get a reference to storage root
                          Reference referenceRoot =
                              FirebaseStorage.instance.ref();
                          Reference referenceDirImages =
                              referenceRoot.child('images');

                          //Create a reference for the image to be stored
                          Reference referenceImageToUpload =
                              referenceDirImages.child(uniqueFileName);

                          //Handle errors/success
                          try {
                            //Store the file
                            await referenceImageToUpload
                                .putFile(File(file.path));
                            //Success: get the download URL
                            imageUrl =
                                await referenceImageToUpload.getDownloadURL();
                            await FirebaseAuth.instance.currentUser!
                                .updatePhotoURL(imageUrl);
                          } catch (error) {
                            //Some error occurred
                          }
                          setState(() {});
                        },
                        icon: Icon(Icons.camera_alt),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextFormField(
                controller: dispNameController,
                // validator: validateEmail,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    fillColor: Color(0xff2C2C2C).withOpacity(0.51),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(45.0),
                        borderSide: BorderSide.none),
                    prefixIcon: Icon(Icons.person_outline_sharp),
                    prefixIconColor: Color(0xff707070),
                    // labelText: 'Email',
                    hintText: 'Name',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 112, 112, 112))),
              ),
            ),

            // Padding(
            //   padding:
            //       EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
            //   child: Column(
            //     children: [
            //       CircleAvatar(
            //         foregroundImage: NetworkImage(_firebaseAuth
            //                 .currentUser!.photoURL ??
            //             'https://th.bing.com/th/id/OIP.DGePcjJ-RdJr7oivIaPxGgHaHa?w=217&h=217&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
            //         backgroundColor: Colors.white,
            //         radius: 60,
            //       ),
            //       IconButton(
            //         onPressed: () async {
            //           /Step 1:Pick image/
            //           //Install image_picker
            //           //Import the corresponding library

            //           ImagePicker imagePicker = ImagePicker();
            //           XFile? file = await imagePicker.pickImage(
            //               source: ImageSource.gallery);
            //           print('${file?.path}');

            //           if (file == null) return;
            //           //Import dart:core
            //           String uniqueFileName =
            //               DateTime.now().millisecondsSinceEpoch.toString();

            //           /Step 2: Upload to Firebase storage/
            //           //Install firebase_storage
            //           //Import the library

            //           //Get a reference to storage root
            //           Reference referenceRoot = FirebaseStorage.instance.ref();
            //           Reference referenceDirImages =
            //               referenceRoot.child('images');

            //           //Create a reference for the image to be stored
            //           Reference referenceImageToUpload =
            //               referenceDirImages.child(uniqueFileName);

            //           //Handle errors/success
            //           try {
            //             //Store the file
            //             await referenceImageToUpload.putFile(File(file.path));
            //             //Success: get the download URL
            //             imageUrl = await referenceImageToUpload.getDownloadURL();
            //             await FirebaseAuth.instance.currentUser!
            //                 .updatePhotoURL(imageUrl);
            //           } catch (error) {
            //             //Some error occurred
            //           }
            //           setState(() {});
            //         },
            //         icon: Icon(Icons.camera_alt),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.only(top: 1.0),
            //         child: Text(
            //           "Edit Profile Picture",
            //           style: TextStyle(
            //               color: Colors.white,
            //               fontSize: 15,
            //               fontWeight: FontWeight.w500),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                height: 50,
                width: 220,
                decoration: BoxDecoration(
                    color: warnaOren, borderRadius: BorderRadius.circular(45)),
                child: TextButton(
                  onPressed: () async {
                    if (dispNameController.text != "") {
                      await FirebaseAuth.instance.currentUser!
                          .updateDisplayName(dispNameController.text);
                    }

                    Navigator.of(context).popUntil((route) => route.isFirst);
                    await Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => profile()),
                    );
                  },
                  child: const Text(
                    'Confirm',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
