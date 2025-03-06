import 'dart:convert'; 
  
import 'package:flutter/material.dart'; 
import 'package:flutter/services.dart' show rootBundle; 
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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const p1(s:1),
    );
  }
}

class p1 extends StatefulWidget{
  const p1({super.key, required this.s});
  
  final int s;
  
  @override
  State<p1> createState() => _p1a();
}

class _p1a extends State<p1>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: Text("Tavern tools"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Outils pour le JDR lightweight Tavern"),
            SizedBox(height: 20),
            ElevatedButton(onPressed: ()=>{}, child: Text("Créer un personnage")),
          ],
        ),
      ),
    );
  }
}

class chacreate extends StatefulWidget{
  const chacreate({super.key});
  
  @override
  State<chacreate> createState() => _chacreate();
}
class _chacreate extends State<chacreate>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: Text("Création de personnage"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Création de personnage"),
            SizedBox(height: 20),
            Row(
              children: [
                Text("Nom: "),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nom",
                  ),
                ),
                SizedBox(width: 20),
                Text("Classe: "),
                
              ],
            ),
          ],
        ),
        ),
      );
  }
}