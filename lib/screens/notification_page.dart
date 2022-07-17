import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Activity",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 45, 74, 238),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                buildNotification(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1Z0lP5xaKzQAFk-6vw-Vf_RWa2VNgqpKRPw&usqp=CAU',
                  'Jennifer Lawrence, you might know is on Global Friends',
                ),
                buildNotification(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiBx3P4ADk-k4Ytj8nFcv7EFmEepBrdlVPHA&usqp=CAU',
                    'Rohit Saraf has started following you'),
                buildNotification(
                    'https://m.media-amazon.com/images/M/MV5BNWJlMGI5NzAtMmQ2MC00OWI5LWE3ZTItYzViNWE3ZGMwZjljXkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_.jpg',
                    'Nick Bateman mentioned you in a comment: 👍🤞'),
                buildNotification(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRz1TtMqcjKZdQyZEgc3dsoH1BEqCnDz63bFg&usqp=CAU',
                    "Ashley Greene added a new post"),
                buildNotification(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8tCIp_RoMl8pReyDpfkHWrWbwHbM2oJi_bQ&usqp=CAU',
                    'Álvaro Morte has commented on your post: You looks Superb!'),
                buildNotification(
                    'https://i.pinimg.com/originals/be/92/b1/be92b1f45d2954eeb8cffc7b6dbe0064.jpg',
                    'Follow Emma Watson,Dhritiman Bharadwaj and others you know to see their photos'),
                buildNotification(
                    'https://br.paipee.com/wp-content/uploads/2021/06/baixados-4-1.jpg',
                    'Jennifer Aniston has started following you'),
                buildNotification(
                    'https://m.media-amazon.com/images/M/MV5BNWJlMGI5NzAtMmQ2MC00OWI5LWE3ZTItYzViNWE3ZGMwZjljXkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_.jpg',
                    "Today is Nick Bateman's Birthday. You may give wishes."),
                buildNotification(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ--vN_xs93O6AtbuWc6WXnQLwNxC69y2maYA&usqp=CAU',
                    'Anna Kendrick, you may know is on Global Friends'),
                buildNotification(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMJAO3Sg7GKvFR9l5FC5rXL2tDPHM7X60t8eBaKotidhXVrZ4lusnzrLlcRPGCkS76D2Q&usqp=CAU',
                    'Cristiano Ronaldo added a new post.'),
                buildNotification(
                    'https://i.pinimg.com/736x/98/65/41/986541ded1c9a98c10ed246ec2496296.jpg',
                    'Tom Cruise started following you')
              ],
            ),
          )
        ],
      ),
    );
  }

  ListTile buildNotification(String img, String text) {
    return ListTile(
      // isThreeLine: true,
      contentPadding: const EdgeInsets.symmetric(vertical: 10),
      leading: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(img),
          ),
        ),
      ),
      title: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
    );
  }
}
