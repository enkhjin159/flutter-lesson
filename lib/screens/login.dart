import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _fromKey = GlobalKey<FormState>();
  final _phoneCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  void onSubmit() {
    if (_fromKey.currentState!.validate()) {
      print("Amjilttai");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Form(
        key: _fromKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Let's sign you",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.bold)),
                Text(
                  "Welcome back",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
                Text(
                  "You've been missed",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _phoneCtrl,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Хоосон байж болохгүй";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: Colors.white.withOpacity(0.9), width: 1),
                    ),
                    labelStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                    label: Text("Утасны дугаар"),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passCtrl,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Хоосон байж болохгүй";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: Colors.white.withOpacity(0.9), width: 1),
                    ),
                    labelStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                    label: Text("нууц үг"),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                ),
                onPressed: onSubmit,
                child: Text("Нэвтрэх"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
