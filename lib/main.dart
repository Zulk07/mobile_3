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
      appBar: AppBar(title: Text("Beranda"),backgroundColor: const Color.fromARGB(255, 70, 121, 197)),
      body: Container(
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            Text("Nama  : Zulkifli"),
            Text("Nim   : 220111009"),
            Text("Prodi : Informatika"),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
              },
              child: Text('sign up'),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
              },
            ),
            TextField(
             decoration: InputDecoration(
              labelText: 'Nama',
              hintText: 'Masukkan nama Anda',
              border: OutlineInputBorder(),
             ),
             onChanged: (text) {
              },
            ),
            TextField(
               keyboardType: TextInputType.emailAddress,
               obscureText: true,
               maxLength: 20,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Masukkan email Anda',
                  border: OutlineInputBorder(),
                ),
            )
            
          ] 
        )
      ),
    );
  }
}