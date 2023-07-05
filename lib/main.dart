import 'package:ds_attendence/routers/routes.dart';
import 'package:flutter/material.dart';
import 'package:ds_attendence/routers/routes.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
// / Flutter code sample for [NavigationBar].

Future<void> main() async {
  await dotenv.load(fileName: '.env');
  runApp(MaterialApp(
    initialRoute: '/',
    routes: routes,
  ));
}

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavigationExample()
      );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(Icons.commute),
            label: 'Commute',
          ),
          NavigationDestination(
            // selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'Saved',
          ),
        ],
      ),
      body: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/ds_logo.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/login_pic.jpg"),
              fit: BoxFit.cover,
              )
          ),
        ),
        Container(
          // color: Colors.blue,
          alignment: Alignment.center,
          child: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/list-page");
          },
          child: Text('Click me'),
        ),
      ),
        ),
      ][currentPageIndex],
    );
  }
}