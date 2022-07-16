import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuqtaDRLBx_yKZzyQC3a6n4IM5mtCyJDY7yg&usqp=CAU'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.elliptical(150, 80),
                      bottomRight: Radius.elliptical(150, 80),
                    ),
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
                top: MediaQuery.of(context).size.width / 2 - 60,
                left: MediaQuery.of(context).size.width / 2 - 60,
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1vyjb4h0JC8gdECy3bY83Kzu4oE885MSUHw&usqp=CAU'),
                  radius: 60,
                ),
              ),
              const Positioned(
                right: 10,
                top: 10,
                child: Icon(
                  Icons.edit,
                  size: 30,
                  color: Colors.black87,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Flexible(
                  child: Text(
                    "1.2M \n Following",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Flexible(
                  child: Text(
                    "1050 \n Follower",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            child: const Text(
              "I am an American actress and singer. Known for her acting versatility and musical prowess",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
              child: GridView.count(
                padding: EdgeInsets.zero,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: .8,
                physics: const ScrollPhysics(),
                crossAxisCount: 2,
                children: [
                  buildUserPost(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQMsqxJg4HVjBGtnvz25Hl6H-nlPLz6uv8QA&usqp=CAU',
                      '2.4M'),
                  buildUserPost(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYcbQIjXIysu2ng2tJyoUw8uggGMZBZWv2wg&usqp=CAU',
                      '4.1M'),
                  buildUserPost(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkqVG0Wa6YjNK6VDqC4dv0bPtcYio0nmnh1Q&usqp=CAU',
                      '6.1M'),
                  buildUserPost(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe1X9z0J32mg91Yw_omwv4RLwxBL2_dqcXqg&usqp=CAU',
                      '1.5M'),
                  buildUserPost(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4GXHJkECsbfT5nXb21qm5K99mPN20BcUTmw&usqp=CAU',
                      '3.3M'),
                  buildUserPost(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHPtQdRDZqCASC-h-aMRjS0T6tyQq8Z57k9g&usqp=CAU',
                      '4.2M'),
                  buildUserPost(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGplp2INhilz_jqZkcUdgGuwyTsXMuhtr7hw&usqp=CAU',
                      '5.3M'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Card buildUserPost(String url, String likes) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(url),
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              right: 15,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: likes,
                      style: const TextStyle(
                          fontWeight: FontWeight.w900, color: Colors.red),
                    ),
                    const WidgetSpan(
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
