import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Human Resource Information System',
            style: TextStyle(fontSize: 15)),
      ),
      body: const Center(
        child: Text('Landing Page'),
      ),
      drawer: Drawer(
        child: ListView(
          // padding: const EdgeInsets.symmetric(vertical: 100.0),
          children: <Widget>[
            SizedBox(
              height: 180,
              child: DrawerHeader(
                margin: const EdgeInsets.all(0.0),
                padding: const EdgeInsets.only(left: 15),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // left alignment
                  children: [
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/15117288?s=400&u=11c2b655de10964004b742d969d76ef2e0e51402&v=4'),
                        ),
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.person, size: 20.0),
                        SizedBox(
                          width: 5,
                        ),
                        Flexible(
                          child: Text('MARK ANGELO DAYAGMIL BON',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(Icons.work, size: 20.0),
                        SizedBox(
                          width: 5,
                        ),
                        Text('WEV DEVELOPER IV',
                            style:
                                TextStyle(color: Colors.white, fontSize: 13)),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(Icons.location_on, size: 20.0),
                        SizedBox(
                          width: 5,
                        ),
                        Text('ISTMS | IS-PDPMD',
                            style:
                                TextStyle(color: Colors.white, fontSize: 13)),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(Icons.email, size: 20.0),
                        SizedBox(
                          width: 5,
                        ),
                        Text('mdbon@dilg.gov.ph',
                            style:
                                TextStyle(color: Colors.white, fontSize: 11)),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.portrait_rounded, size: 20.0),
                        SizedBox(
                          width: 5,
                        ),
                        Text('09205',
                            style:
                                TextStyle(color: Colors.white, fontSize: 11)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ExpansionTile(
              title: const Text("PERSONAL DATA SHEET"),
              children: [
                ListTile(
                  title: const Text('I. Personal Information'),
                  dense: true,
                  visualDensity: const VisualDensity(
                      vertical: -3), // (-)to compact (+) to expand
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('II. Family Background'),
                  dense: true,
                  visualDensity: const VisualDensity(vertical: -3),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('III. Educational Background'),
                  dense: true,
                  visualDensity: const VisualDensity(vertical: -3),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('IV. Civil Service Eligibility'),
                  dense: true,
                  visualDensity: const VisualDensity(vertical: -3),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('V. Work Experience'),
                  dense: true,
                  visualDensity: const VisualDensity(vertical: -3),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text(
                      'VII. Learning & Development (L&D) Interventions/Trainings Program Attended'),
                  dense: true,
                  visualDensity: const VisualDensity(vertical: -3),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('VII. Other Information'),
                  dense: true,
                  visualDensity: const VisualDensity(vertical: -3),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Reference Person'),
                  dense: true,
                  visualDensity: const VisualDensity(vertical: -3),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Questionaires'),
                  dense: true,
                  visualDensity: const VisualDensity(vertical: -3),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            ListTile(
              title: const Text('LEAVE APPLICATION'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
