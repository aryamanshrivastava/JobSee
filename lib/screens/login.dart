// ignore_for_file: unused_import, unused_field, prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'find.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

final _formKey = GlobalKey<FormState>();

//const themeColor = const Color(0xff063970);

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();

  // @override
  // void initState() {
  //   MessagingService().getPermissions();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: phoneController,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  maxLength: 10,
                  validator: (value) {
                    if (value == null) {
                      return 'Please enter phone number';
                    } else if (value.length < 10 ||
                        int.tryParse(value) == null) {
                      return 'Enter valid phone number';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 2.0),
                      ),
                      hintText: 'Phone No.',
                      prefixIcon: Icon(
                        Icons.call,
                        color: Colors.black,
                      ),
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Color(0xffC9C9C9))),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  // if (_formKey.currentState!.validate()) {
                  //   var doc = await FirebaseFirestore.instance
                  //       .collection('users')
                  //       .doc('+91' + phoneController.text)
                  //       .get();
                  //   if (doc.exists) {
                  //     _auth.logInWIthPhone(phone: phoneController.text);
                  //     Navigator.pushReplacement(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => OtpScreen(
                  //                   phoneNumber: phoneController.text,
                  //                   registered: true,
                  //                   auth: _auth,
                  //                 )));
                  //   } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FindPage()));
                  //   }
                  // }
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: Color(0xff9B4BFF),
                  elevation: 10,
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1,
                      vertical: MediaQuery.of(context).size.height * 0.012),
                ),
                child: Text(
                  'Send OTP',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w800,
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
