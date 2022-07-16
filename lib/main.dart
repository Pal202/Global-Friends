import 'package:flutter/material.dart';
import 'screens/register_screen.dart';
import 'screens/register_screen_02.dart';
import 'screens/home_screen.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Global Friends',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
      debugShowCheckedModeBanner: false,
      // scrollBehavior: ScrollConfiguration.of(context).copyWith(dragDevices: {PointerDeviceKind.mouse}),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Global Friends"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TextFieldContainer(
            child: TextField(
                decoration: InputDecoration(
              hintText: "Email/Phone number",
              icon: Icon(Icons.person),
            )),
          ),
          const TextFieldContainer(
              child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "Password", icon: Icon(Icons.password)),
          )),
          CheckboxListTile(
            value: false,
            onChanged: (bool? value) {},
            title: const Text("Remember me"),
            controlAffinity: ListTileControlAffinity.leading,
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
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            ),
            child: const Text("Login"),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text("forgot password?"),
            ),
          ),
          const OrDivider(),
          const SocialIcons(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Create new Account?"),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => RegisterScreen()),
                      ),
                    );
                  },
                  child: const Text("Signup"))
            ],
          )
        ],
      ),
    );
  }
}

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: const [
          Expanded(
            child: Divider(
              height: 3,
              color: Colors.blueGrey,
            ),
          ),
          Text("OR"),
          Expanded(
            child: Divider(
              height: 3,
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }
}
