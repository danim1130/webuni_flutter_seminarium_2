import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: ListView(
        children: [
          for (int i = 0; i < 20; i++)
            UserListItem(
              name: 'Dani $i',
              avatarUrl: 'https://picsum.photos/200',
              email: 'dani@example.com',
            ),
        ],
      ),
    );
  }
}

class UserListItem extends StatelessWidget {
  final String name;
  final String avatarUrl;
  final String email;

  const UserListItem(
      {super.key,
      required this.name,
      required this.avatarUrl,
      required this.email});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        /*gradient: LinearGradient(
          colors: [Colors.green, Colors.red, Colors.pink],
          stops: [0, 0.7, 1]
        ),*/
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 5),
            blurRadius: 5,
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: [
          Image.network(
            avatarUrl,
            height: 60,
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                email,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          )
        ],
      ),
    );
    /*return ListTile(
      leading: Image.network(avatarUrl),
      title: Text(name),
      subtitle: Text(email),
      onTap: (){

      },
    );*/
  }
}
