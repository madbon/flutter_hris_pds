import 'package:flutter/material.dart';
import 'package:flutter_hris01/main_drawer.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  Future<List<User>> userFuture = getUsers();

  static Future<List<User>> getUsers() async {
    // const url = 'https://jsonplaceholder.typicode.com/albums';
    const url =
        'https://hris-admin.dilg.gov.ph/dropdown/getuserinfo/load-employee';

    final response = await http.get(Uri.parse(url));

    final body = json.decode(response.body);
    return body.map<User>(User.fromJson).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Human Resource Information System',
            style: TextStyle(fontSize: 15)),
      ),
      body: Center(
        child: FutureBuilder<List<User>>(
          future: userFuture,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final users = snapshot.data!;

              // return buildUsers(users);
              return ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    final user = users[index];

                    return Card(
                      child: ListTile(
                        title: Text(user.text),
                      ),
                    );
                  });
            } else {
              return const Text('No ');
            }
          },
        ),
      ),
      drawer: const MainDrawer(),
    );
  }

  // Widget buildUsers(List<User> users) => ListView.builder(
  //     itemCount: users.length,
  //     itemBuilder: (context, index) {
  //       final user = users[index];

  //       return Card(
  //         child: ListTile(
  //           title: Text(user.text),
  //         ),
  //       );
  //     });
}

class User {
  final String text;

  const User({required this.text});

  static User fromJson(json) => User(text: json['text']);
}
