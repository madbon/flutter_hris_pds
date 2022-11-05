import 'package:flutter/material.dart';
import 'package:flutter_hris01/main_drawer.dart';

// 'https://hris-admin.dilg.gov.ph/dropdown/getuserinfo/load-employee'

class PdsBasicInfo extends StatefulWidget {
  const PdsBasicInfo({super.key});

  @override
  State<PdsBasicInfo> createState() => _PdsBasicInfoState();
}

class _PdsBasicInfoState extends State<PdsBasicInfo> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDS | Basic Information',
            style: TextStyle(fontSize: 15)),
      ),
      body: const Center(
        child: Text('Hello'),
      ),
      drawer: const MainDrawer(),
    );
  }
}
