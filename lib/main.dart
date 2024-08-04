import 'package:coffee_masters/offerspage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Greet extends StatefulWidget {
  const Greet({super.key});

  @override
  State<Greet> createState() => _GreetState();
}

class _GreetState extends State<Greet> {
  //State Variable:
  var name = "";

  @override
  Widget build(BuildContext context) {
    var greetStyle = const TextStyle(fontSize: 25);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                "Assalamu Alaikum $name",
                style: greetStyle,
              ),
              Text(
                "!!!",
                style: greetStyle,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: TextField(
              onChanged: (value) => setState(() {
                    name = value;
                  })),
        ),
      ],
    );
  }
}

class SalamWorld extends StatelessWidget {
  const SalamWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Salam World!");
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Masters!',
      theme: ThemeData(
        primaryColor: Colors.brown,
        primarySwatch: Colors.brown,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 73, 45, 35),
        ),
        textTheme: const TextTheme(
          headlineMedium: TextStyle(fontSize: 33, color: Colors.brown),
          headlineSmall: TextStyle(fontSize: 18, color: Colors.brown),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget currentWidgetPage = const Text("!!!");

    switch (selectedIndex) {
      case 0:
        currentWidgetPage = const Text("Menu Page");
        break;
      case 1:
        currentWidgetPage = const OffersPage();
        break;
      case 2:
        currentWidgetPage = const Text("Orders Page");
        break;
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset("images/logo.png"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (newIndex) {
          setState(() {
            selectedIndex = newIndex;
          });
        },
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.yellow.shade400,
        unselectedItemColor: Colors.brown.shade50,
        items: const [
          BottomNavigationBarItem(label: "Menu", icon: Icon(Icons.coffee)),
          BottomNavigationBarItem(
              label: "Offers", icon: Icon(Icons.local_offer)),
          BottomNavigationBarItem(
              label: "Order", icon: Icon(Icons.shopping_cart_checkout_outlined))
        ],
      ),
      body: currentWidgetPage,
    );
  }
}
