import 'package:flutter/material.dart';

class FindFriends extends StatefulWidget {
  FindFriends({Key? key}) : super(key: key);

  @override
  State<FindFriends> createState() => _FindFriendsState();
}

class _FindFriendsState extends State<FindFriends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: MySearchDelegate());
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Column(
        children: [
          const Text(
            "Recent Searches",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 45, 74, 238)),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                recentSearches(
                    'https://m.media-amazon.com/images/M/MV5BNWJlMGI5NzAtMmQ2MC00OWI5LWE3ZTItYzViNWE3ZGMwZjljXkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_.jpg',
                    'Nick Bateman'),
                recentSearches(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiBx3P4ADk-k4Ytj8nFcv7EFmEepBrdlVPHA&usqp=CAU',
                    'Rohit Saraf'),
                recentSearches(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1Z0lP5xaKzQAFk-6vw-Vf_RWa2VNgqpKRPw&usqp=CAU',
                    'Jennifer Lawrence'),
              ],
            ),
          )
        ],
      ),
    );
  }

  ListTile recentSearches(String avatar, String name) {
    return ListTile(
      contentPadding: const EdgeInsets.only(right: 10),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(avatar),
            ),
          ),
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      trailing: TextButton(
        onPressed: () {},
        child: const Text(
          'Follow',
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent),
        ),
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: const Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => close(context, null),
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView();
  }
}
