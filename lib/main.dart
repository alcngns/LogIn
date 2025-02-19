import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    var screenData = MediaQuery.of(context);
    final double screenWidth = screenData.size.width;
    final double screenHeight = screenData.size.height;

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: SizedBox(
                    width: screenWidth / 4.0,
                    height: screenHeight / 10.0,
                    child: Image.asset("images/logo.png")
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(screenHeight / 30.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(screenHeight / 30.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(screenHeight / 30.0),
                child: SizedBox(
                  width: screenWidth / 1.2,
                  height: screenHeight / 18.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("LOGIN", style: TextStyle(fontSize: screenHeight / 50.0,)),
                    onPressed: () {
                    },
                  ),
                ),
              ),
              Text(
                  "Help?",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth / 25.0,
                  ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
