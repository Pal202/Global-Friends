import 'package:flutter/material.dart';
import 'register_screen_02.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Align(
            alignment: Alignment.center,
            child: Text(
              "Welcome To Global Friend",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 22,
              ),
            ),
          ),
          const TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Firstname",
              ),
            ),
          ),
          const TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Lastname",
              ),
            ),
          ),
          const TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Email/Phone number",
                icon: Icon(Icons.person),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: (() {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => PasswordConfirmation()),),);
            }),
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            ),
            child: const Text("NEXT"),
          ),
          const SizedBox(
            height: 10,
          ),
          const SocialIcons(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have an account?"),
              TextButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  child: const Text("Login"))
            ],
          )
        ],
      ),
    );
  }
}

// class TextFieldContainer extends StatelessWidget {
//   final Widget child;
//   const TextFieldContainer({Key? key, required this.child}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
//       margin: const EdgeInsets.symmetric(vertical: 10),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(30),
//           color: const Color.fromARGB(255, 110, 201, 253)),
//       child: child,
//     );
//   }
// }

class SocialIcons extends StatelessWidget {
  const SocialIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                shape: BoxShape.circle, border: Border.all(width: 2)),
            child: Image.asset(
              "assets/google.png",
              width: 30,
              height: 30,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                shape: BoxShape.circle, border: Border.all(width: 2)),
            child: Image.asset(
              "assets/facebook.png",
              width: 30,
              height: 30,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                shape: BoxShape.circle, border: Border.all(width: 2)),
            child: Image.asset(
              "assets/linkedin.png",
              width: 30,
              height: 30,
            ),
          ),
        ],
      ),
    );
  }
}
