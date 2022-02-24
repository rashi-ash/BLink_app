import 'dart:io';
import 'package:blink/Contents/signup_controller.dart';
import 'package:blink/Contents/student-login.dart';
import 'package:image_picker/image_picker.dart';
import 'package:blink/Contents/student-profile-view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudentProfileEdit extends StatefulWidget {
  const StudentProfileEdit({Key? key}) : super(key: key);
  @override
  _StudentProfileEditState createState() => _StudentProfileEditState();
}

class _StudentProfileEditState extends State<StudentProfileEdit> {
  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();

  SignUpController signUpController = Get.find();

  final name = TextEditingController();
  final gName = TextEditingController();
  final emails = TextEditingController();
  final yr = TextEditingController();
  final adNo = TextEditingController();
  final dept = TextEditingController();
  getItemAndNavigate(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: ((context) => StudentProfile(
                nameHolder: name.text,
                parentHolder: gName.text,
                deptHolder: dept.text,
                yearHolder: yr.text,
                adHolder: adNo.text,
                emailHolder: emails.text))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffF9FFED), Color(0xffA4DADA)]),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 49,
                    ),
                    const Center(
                      child: Text(
                        'Profile',
                        style: TextStyle(
                            color: Colors.black87,
                            // color: Color(0xff388A75),
                            fontFamily: 'Rockwell',
                            fontSize: 30,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Stack(
                        children: [
                          const SizedBox(
                            width: 115,
                            height: 100,
                          ),
                          Obx(() => CircleAvatar(
                                radius: 55,
                                backgroundImage:
                                    signUpController.isProficPicPathSet.value ==
                                            true
                                        ? FileImage(File(signUpController
                                            .profilePicPath
                                            .value)) as ImageProvider
                                        : const AssetImage(
                                            'images/student-profile.png'),
                              )),
                          Positioned(
                            bottom: 6,
                            right: 3,
                            child: ClipOval(
                              child: Container(
                                height: 35,
                                width: 35,
                                color: const Color(0xff00B8B8),
                                child: InkWell(
                                  child: const Icon(
                                    Icons.camera_alt_rounded,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  onTap: () {
                                    showModalBottomSheet(
                                        context: context,
                                        backgroundColor:
                                            const Color(0xffF7FFE8),
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(30),
                                          ),
                                        ),
                                        builder: (context) =>
                                            bottomSheet(context));
                                  },
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 30, bottom: 5, left: 50, right: 50),
                      child: TextFormField(
                        cursorColor: const Color(0xff46665E),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          hintStyle: const TextStyle(color: Color(0xffABAAAA)),
                          hintText: "Full Name",
                          fillColor: const Color(0xffFDF9F9).withOpacity(0.39),
                        ),
                        controller: name,
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 50, right: 50),
                      child: TextField(
                        cursorColor: const Color(0xff46665E),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          hintStyle: const TextStyle(color: Color(0xffABAAAA)),
                          hintText: "Guardian Name",
                          fillColor: const Color(0xffFDF9F9).withOpacity(0.39),
                        ),
                        controller: gName,
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 5, left: 50, right: 50),
                      child: TextFormField(
                        cursorColor: const Color(0xff46665E),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          hintStyle: const TextStyle(color: Color(0xffABAAAA)),
                          hintText: "Email",
                          fillColor: const Color(0xffFDF9F9).withOpacity(0.38),
                        ),
                        controller: emails,
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 50, right: 50, top: 10, bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              cursorColor: const Color(0xff46665E),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 20),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                filled: true,
                                hintStyle:
                                    const TextStyle(color: Color(0xffABAAAA)),
                                hintText: "Department",
                                fillColor:
                                    const Color(0xffFDF9F9).withOpacity(0.39),
                              ),
                              controller: dept,
                              keyboardType: TextInputType.name,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextField(
                                cursorColor: const Color(0xff46665E),
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 20),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: const BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  filled: true,
                                  hintStyle:
                                      const TextStyle(color: Color(0xffABAAAA)),
                                  hintText: "Year",
                                  fillColor:
                                      const Color(0xffFDF9F9).withOpacity(0.39),
                                ),
                                controller: yr,
                                keyboardType: TextInputType.text,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 5, left: 50, right: 50),
                      child: TextField(
                        cursorColor: const Color(0xff46665E),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          hintStyle: const TextStyle(color: Color(0xffABAAAA)),
                          hintText: "Admission number",
                          fillColor: const Color(0xffFDF9F9).withOpacity(0.35),
                        ),
                        controller: adNo,
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 18, bottom: 15, right: 15),
                          child: TextButton(
                            onPressed: () => getItemAndNavigate(context),
                            child: const Icon(Icons.arrow_forward_rounded,
                                size: 30, color: Colors.white),
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.2,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        children: [
          const Text(
            'Choose Profile Photo',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.image, size: 35),
                    ),
                    Text(
                      'Gallery',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                onTap: () {
                  takephoto(ImageSource.gallery);
                },
              ),
              const SizedBox(
                width: 70,
              ),
              InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.camera_alt, size: 35),
                    ),
                    Text(
                      'Camera',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                onTap: () {
                  takephoto(ImageSource.camera);
                },
              )
            ],
          )
        ],
      ),
    );
  }

  Future<void> takephoto(ImageSource source) async {
    final pickedImage =
        await imagePicker.pickImage(source: source, imageQuality: 100);
    pickedFile = File(pickedImage!.path);
    signUpController.setProfileImagePath(pickedFile!.path);
  }
}
