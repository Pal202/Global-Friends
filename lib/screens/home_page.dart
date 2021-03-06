import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/gf.png',
                width: 30,
                height: 30,
              ),
              const Flexible(
                child: Text(
                  "Global Friends",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 45, 74, 238)),
                ),
              ),
            ],
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Stack(
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1vyjb4h0JC8gdECy3bY83Kzu4oE885MSUHw&usqp=CAU"),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 10,
                        child: Icon(
                          Icons.add,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                ),
                buildStoryAvatar(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiwuyS34Y57CjU3CRcPlkqjDGeIonaEeof_w&usqp=CAU'),
                buildStoryAvatar(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRz1TtMqcjKZdQyZEgc3dsoH1BEqCnDz63bFg&usqp=CAU'),
                buildStoryAvatar(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR59iEIA5WZDh69BuW-6_x7RBkxzGj5sjYRlg&usqp=CAU'),
                buildStoryAvatar(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtXZZaGIG7hyw4-CS1eiYxeHpoznU0tZqC2A&usqp=CAU'),
                buildStoryAvatar(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoDeoZDt9t53xCkiehy7tEpykqzbIf3u6DEQ&usqp=CAU'),
                buildStoryAvatar(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTROdNhxPfdoj6siOBA9WqJ1P-wP52FUlfGRg&usqp=CAU'),
              ],
            ),
          ),
          // const Divider(
          //   height: 3,
          // ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                BuildPost(
                    avatarURL:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRz1TtMqcjKZdQyZEgc3dsoH1BEqCnDz63bFg&usqp=CAU',
                    name: 'Ashley Greene',
                    postURL:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMFqC4BS9HIFU_4bAOPFRlZhNnWmJviYIBxg&usqp=CAU'),
                BuildPost(
                    avatarURL:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1vyjb4h0JC8gdECy3bY83Kzu4oE885MSUHw&usqp=CAU',
                    name: 'Hailee Steinfield',
                    postURL:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuqtaDRLBx_yKZzyQC3a6n4IM5mtCyJDY7yg&usqp=CAU'),
                BuildPost(
                    avatarURL:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR59iEIA5WZDh69BuW-6_x7RBkxzGj5sjYRlg&usqp=CAU',
                    name: 'Robert Pattinson',
                    postURL:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVPkGchCb5t10Tbe0Yi2Y4Xx7q8qF64GBl_A&usqp=CAU'),
                BuildPost(
                    avatarURL:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiwuyS34Y57CjU3CRcPlkqjDGeIonaEeof_w&usqp=CAU',
                    name: 'Robert Downey Jr',
                    postURL:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGoziy6sShhrDyPPgxwggRwvNOo8MUOkU1qw&usqp=CAU'),
                BuildPost(
                    avatarURL:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTROdNhxPfdoj6siOBA9WqJ1P-wP52FUlfGRg&usqp=CAU',
                    name: 'Taylor Lautner',
                    postURL:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuG6vl__j-aGEKeO-AjCAtl-WXhiGu1VSiWQ&usqp=CAU'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildStoryAvatar(String url) {
    return Container(
      width: 60,
      height: 60,
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.red),
      child: CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(url),
      ),
    );
  }
}

// ignore: must_be_immutable
class BuildPost extends StatefulWidget {
  String name, avatarURL, postURL;

  BuildPost({
    Key? key,
    required this.name,
    required this.avatarURL,
    required this.postURL,
  }) : super(key: key);

  @override
  State<BuildPost> createState() => _BuildPostState();
}

class _BuildPostState extends State<BuildPost> {
  bool isLiked = false;
  final likekey = GlobalKey<LikeButtonState>();
  final animation = const Duration(milliseconds: 15000);
  @override
  Widget build(BuildContext context) {
    const animation = Duration(milliseconds: 1500);
    return GestureDetector(
      onDoubleTap: () {
        likekey.currentState!.onTap();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(widget.avatarURL),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.name,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const Icon(Icons.more_vert)
              ],
            ),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width - 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(widget.postURL),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 30,
                          offset: const Offset(0, 10),
                        ),
                      ]),
                ),
                Positioned(
                  bottom: 15,
                  right: 15,
                  child: LikeButton(
                    key: likekey,
                    isLiked: isLiked,
                    animationDuration: animation,
                    size: 30,
                    likeBuilder: (isLiked) {
                      final color = isLiked ? Colors.red : Colors.grey;
                      return Icon(
                        Icons.favorite,
                        color: color,
                        size: 30,
                      );
                    },
                    onTap: ((isLiked) async {
                      this.isLiked = !isLiked;

                      Future.delayed(animation)
                          .then((value) => setState(() {}));
                      return !isLiked;
                    }),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
