import 'package:flutter/material.dart';

class ChatBox extends StatefulWidget {
  ChatBox({Key? key}) : super(key: key);

  @override
  State<ChatBox> createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
  final _avatar = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiBx3P4ADk-k4Ytj8nFcv7EFmEepBrdlVPHA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRz1TtMqcjKZdQyZEgc3dsoH1BEqCnDz63bFg&usqp=CAU',
    'https://br.paipee.com/wp-content/uploads/2021/06/baixados-4-1.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ--vN_xs93O6AtbuWc6WXnQLwNxC69y2maYA&usqp=CAU',
    'https://m.media-amazon.com/images/M/MV5BNWJlMGI5NzAtMmQ2MC00OWI5LWE3ZTItYzViNWE3ZGMwZjljXkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMJAO3Sg7GKvFR9l5FC5rXL2tDPHM7X60t8eBaKotidhXVrZ4lusnzrLlcRPGCkS76D2Q&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTa3EaFDDRV-ffOOWqLuk0aiTzoDa0BhVwGWw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWSIo4FprSi2HkrvW4p49Uz1je8CRh2aN2og&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5-ERZfngWOweo0CiEFxfwkIzNKc2SbnkAyA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHVuYDRsz1q0uDIpthtGNVl4yvNCEzfm6k6g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo-OhPv9LqowF4Qdbq12nNRdf8233LkURqag&usqp=CAU',
  ];
  final _name = [
    'Rohit Saraf',
    'Ashley Greene',
    'Jennifer Aniston',
    'Anna Kendrick',
    'Nick Bateman',
    'Cristiano Ronaldo',
    'Henry Cavill',
    'Chris Hemsworth',
    'Ben Affleck',
    'Paul Rudd',
    'Gal Gadot',
  ];
  final _message = [
    'I am doing very well.',
    'Are you ready for the party?',
    'How is your life going?',
    'I have some good news for you.',
    'Happy Birthday Nick!',
    'Would I win the game today?',
    'Superman is back!',
    'Where is my Jane Foster?',
    'I am Vengence.',
    'Do have orange slices?',
    'I belong to no one.',
  ];
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  List<ListTile> _chatItem = [];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      addChatItems();
    });
  }

  Future<void> addChatItems() async {
    for (int i = 0; i < _name.length; i++) {
      _chatItem.add(_buildChatItem(i));
      listKey.currentState
          ?.insertItem(i, duration: const Duration(milliseconds: 500));
      await Future.delayed(const Duration(milliseconds: 200));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Messages",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 45, 74, 238),
              ),
            ),
          ),
          Expanded(
            child: AnimatedList(
              physics: BouncingScrollPhysics(),
              key: listKey,
              padding: EdgeInsets.zero,
              initialItemCount: _chatItem.length,
              itemBuilder: (BuildContext context, int index, animation) {
                // return SlideTransition(
                //   position:
                //       Tween(begin: const Offset(1, 0), end: const Offset(0, 0))
                //           .animate(CurvedAnimation(
                //               parent: animation, curve: Curves.decelerate)),
                //   child: _chatItem[index],
                // );
                return SizeTransition(
                  sizeFactor: animation,
                  child: _chatItem[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }

  ListTile _buildChatItem(int index) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      leading: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(_avatar[index]),
          ),
        ),
      ),
      title: Text(
        _name[index],
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(_message[index]),
      trailing: const Icon(Icons.call),
    );
  }
}
