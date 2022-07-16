import 'package:flutter/material.dart';
import 'register_screen_04.dart';

class VerifyOTP extends StatefulWidget {
  VerifyOTP({Key? key}) : super(key: key);

  @override
  State<VerifyOTP> createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Verification OTP", icon: Icon(Icons.pin)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: (() {
                  Navigator.pop(context);
                }),
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                ),
                child: const Text("Back"),
              ),
              ElevatedButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => UserDetails()),
                      ),
                    );
                }),
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                ),
                child: const Text("Next"),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromARGB(255, 110, 201, 253)),
      child: child,
    );
  }
}
