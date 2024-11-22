import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 10.0,
        title: const Text('HEAL THE WORLD',
        selectionColor: Colors.blue,),
        toolbarHeight: 80.5,
        centerTitle: true,
        toolbarOpacity: 0.65,
        surfaceTintColor: Colors.blue,
      ),
      body: const SnackBarPage()
      );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return (
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Text('😢'),
            const Text('THE WORLD NEEDS SAVING.'),
            const Text('DO SOMETHING TODAY.'),
            const Text('START NOW!'),
            const SizedBox(height: 10.5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {
                  const plantATrea = SnackBar(
                    backgroundColor: Colors.brown,
                    padding: EdgeInsets.all(20.0),
                    content: Text("DON'T FORGET TO PLANT A TREE!"),
                    duration: Duration(seconds: 5),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(plantATrea);
                },
                child: const Text('PLANT A TREE 🌳',),),
                TextButton(onPressed: () {
                  const donate = SnackBar(
                    backgroundColor: Colors.brown,
                    padding: EdgeInsets.all(20.0),
                    content: Text("SHOW SOME LOVE BY SUPPORTING TODAY"),
                    duration: Duration(seconds: 5),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(donate);
                },
                child: const Text('DONATE 💰'),),
                TextButton(
                  onPressed: (){
                  const educate = SnackBar(
                    backgroundColor: Colors.brown,
                    padding: EdgeInsets.all(20.0),
                    content: Text("CREATE AWARENESS TODAY BY SHARING THE NEWS!"),
                    duration: Duration(seconds: 5),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(educate);
                },
                  child: const Text('EDUCATE 🗣',),
                )
              ],
            ),
            const SizedBox(height: 20),
            Image.network('https://as2.ftcdn.net/v2/jpg/05/53/68/57/1000_F_553685754_RmaN3lVZdtrhcEcDqJpnUCoh1yqTE6dW.jpg',
            scale: 5.0),
            const SizedBox(height: 50,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async{
                  const register = SnackBar(
                    backgroundColor: Colors.brown,
                    padding: EdgeInsets.all(20.0),
                    content: Text("We understand you wanna be a member, there's no vacancy now!"),
                    duration: Duration(seconds: 5),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(register);
                },
                  child: const Text('BECOME A MEMBER ✔')
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: (){
                  const guest = SnackBar(
                    backgroundColor: Colors.brown,
                    padding: EdgeInsets.all(20.0),
                    content: Text("STILL WORKING ON IT..."),
                    duration: Duration(seconds: 5),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(guest);
                },
                  child: const Text('CONTINUE AS A GUEST USER 👤')
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: (){
                  const login = SnackBar(
                    backgroundColor: Colors.brown,
                    padding: EdgeInsets.all(20.0),
                    content: Text("STILL WORKING ON THIS FEATURE..."),
                    duration: Duration(seconds: 5),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(login);
                },
                  child: const Text('CONTINUE AS A MEMBER 🤝')
                )
              ],
            )
          ],
        )
      )
    );
  }
}