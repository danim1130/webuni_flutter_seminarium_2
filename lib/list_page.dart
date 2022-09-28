import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:webuni_flutter_seminarium/models.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  Future<List<User>>? _userRequest;

  Future<List<User>> _loadUsers() async {
    var response = await http.get(
      Uri.parse('https://randomuser.me/api/?results=40'),
    );
    var jsonData = jsonDecode(response.body);
    return (jsonData['results'] as List).map(User.fromJson).toList();
  }


  @override
  void initState() {
    _userRequest = _loadUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List 2'),
      ),
      body: FutureBuilder<List<User>>(
        future: _userRequest,
        builder: (context, snapshot) {
          if (!snapshot.hasData){
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView(
              children: [
                for (var user in snapshot.requireData)
                  UserListItem(
                    name: user.name.fullName,
                    avatarUrl: user.picture.medium,
                    email: user.email,
                  ),
              ],
            );
          }
        }
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
