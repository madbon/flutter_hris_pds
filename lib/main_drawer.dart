import 'package:flutter/material.dart';
import 'package:flutter_hris01/pds/pds_basic_info.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({super.key});

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                crossAxisAlignment: CrossAxisAlignment.start, // left alignment
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
                          style: TextStyle(color: Colors.white, fontSize: 13)),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.location_on, size: 20.0),
                      SizedBox(
                        width: 5,
                      ),
                      Text('ISTMS | IS-PDPMD',
                          style: TextStyle(color: Colors.white, fontSize: 13)),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.email, size: 20.0),
                      SizedBox(
                        width: 5,
                      ),
                      Text('mdbon@dilg.gov.ph',
                          style: TextStyle(color: Colors.white, fontSize: 11)),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.portrait_rounded, size: 20.0),
                      SizedBox(
                        width: 5,
                      ),
                      Text('09205',
                          style: TextStyle(color: Colors.white, fontSize: 11)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ExpansionTile(
            title: const Text("PERSONAL DATA SHEET"),
            children: [
              ExpansionTile(
                title: const Text('I. Personal Information'),
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.only(left: 30.0),
                    title: const Text('Basic Information'),
                    dense: true,
                    visualDensity: const VisualDensity(
                        vertical: -3), // (-)to compact (+) to expand
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const PdsBasicInfo();
                          },
                        ),
                      );
                    },
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.only(left: 30.0),
                    title: const Text('Identification Numbers'),
                    dense: true,
                    visualDensity: const VisualDensity(
                        vertical: -3), // (-)to compact (+) to expand
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.only(left: 30.0),
                    title: const Text('Residential Address'),
                    dense: true,
                    visualDensity: const VisualDensity(
                        vertical: -3), // (-)to compact (+) to expand
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.only(left: 30.0),
                    title: const Text('Permanent Address'),
                    dense: true,
                    visualDensity: const VisualDensity(
                        vertical: -3), // (-)to compact (+) to expand
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.only(left: 30.0),
                    title: const Text('Contact Information'),
                    dense: true,
                    visualDensity: const VisualDensity(
                        vertical: -3), // (-)to compact (+) to expand
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
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
    );
  }
}
