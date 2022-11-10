import 'package:flutter/material.dart';
import 'package:flutter_hris01/main_drawer.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

// 'https://hris-admin.dilg.gov.ph/dropdown/getuserinfo/load-employee'

class PdsBasicInfo extends StatefulWidget {
  const PdsBasicInfo({super.key});

  @override
  State<PdsBasicInfo> createState() => _PdsBasicInfoState();
}

class _PdsBasicInfoState extends State<PdsBasicInfo> {
  Future<List<User>> userFuture = getUsers();

  static Future<List<User>> getUsers() async {
    // const url = 'https://jsonplaceholder.typicode.com/albums';
    const url =
        'http://10.0.2.2/hris/frontend/web/dropdown/getuserinfo/load-employee';

    final response = await http.get(Uri.parse(url));

    final body = json.decode(response.body);
    return body.map<User>(User.fromJson).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDS | Basic Information',
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

                    return user.hrisId != ''
                        ? Card(
                            child: ListTile(
                              title: Text("${user.hrisId} ${user.text}"),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const DetailScreen(),
                                    // Pass the arguments as part of the RouteSettings. The
                                    // DetailScreen reads the arguments from these settings.
                                    settings: RouteSettings(
                                      arguments: users[index],
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        : const Text('');
                  });
            } else {
              if (snapshot.hasError) {
                return Text('${snapshot.error}');
              } else {
                return const CircularProgressIndicator();
              }
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
  final String hrisId;

  const User({required this.hrisId, required this.text});

  static User fromJson(json) =>
      User(hrisId: json['id'].toString(), text: json['text']);
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as User;

    return Scaffold(
      appBar: AppBar(
        title: Text("HRIS ID: ${user.hrisId}"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(user.text),
      ),
    );
  }
}
