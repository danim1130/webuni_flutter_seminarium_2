import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webuni_flutter_seminarium/models.dart';

class DetailsPage extends StatelessWidget {
  final User user;

  const DetailsPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name.fullName),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Hero(
              tag: user.email,
              child: Image.network(user.picture.large),
            ),
            SizedBox(height: 20),
            Text(user.name.fullName),
            SizedBox(height: 8),
            Text(user.email),
            SizedBox(height: 2),
            Text(user.phone),
          ],
        ),
      ),
    );
  }
}
