import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hris01/main_drawer.dart';
import 'package:http/http.dart' as http;

class PdsBasicInfo extends StatefulWidget {
  const PdsBasicInfo({super.key});

  @override
  State<PdsBasicInfo> createState() => _PdsBasicInfoState();
}

Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class _PdsBasicInfoState extends State<PdsBasicInfo> {
  @override
  void initState() {
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDS | Basic Information',
            style: TextStyle(fontSize: 15)),
      ),
      body: Center(
        child: FutureBuilder<Album>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.text);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
      drawer: const MainDrawer(),
    );
  }
}
