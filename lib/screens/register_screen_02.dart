import 'package:flutter/material.dart';
import 'register_screen_03.dart';

class PasswordConfirmation extends StatefulWidget {
  const PasswordConfirmation({Key? key}) : super(key: key);

  @override
  State<PasswordConfirmation> createState() => _PasswordConfirmationState();
}

class _PasswordConfirmationState extends State<PasswordConfirmation> {
  String? gender = null;
  final genders = ["Male", "Female", "Other"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Username",
              ),
            ),
          ),
          const TextFieldContainer(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Password", icon: Icon(Icons.password)),
            ),
          ),
          const TextFieldContainer(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Confirm Password", icon: Icon(Icons.password)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: DropdownButton(
                  value: gender,
                  items: genders
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ),
                      )
                      .toList(),
                  onChanged: (String? value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                  hint: const Text("Gender"),
                ),
              ),
              const Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "DOB(dd/mm/yyyy)",
                    icon: Icon(Icons.calendar_today),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
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
                        builder: ((context) => VerifyOTP()),
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
