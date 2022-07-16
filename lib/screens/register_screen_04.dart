import 'package:flutter/material.dart';
import 'package:global_friends/screens/home_screen.dart';

class UserDetails extends StatefulWidget {
  UserDetails({Key? key}) : super(key: key);

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextFieldContainer(
            child: TextField(
                decoration: InputDecoration(
              hintText: "Area",
              icon: Icon(Icons.place),
            )),
          ),
          const TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                hintText: "State",
                icon: Icon(Icons.place),
              ),
            ),
          ),
          const TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Country",
                icon: Icon(Icons.place),
              ),
            ),
          ),
          const TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Interest",
                icon: Icon(Icons.interests),
              ),
            ),
          ),
          const TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Skills",
                icon: Icon(Icons.interests),
              ),
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
                        builder: ((context) => HomePage()),
                      ),
                    );
                }),
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                ),
                child: const Text("Signup"),
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
