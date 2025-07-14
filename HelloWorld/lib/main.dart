import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 181, 195, 148),
        appBar: AppBar(
          title: Center(
            child: Text('My Profile',style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),),
          ),
          backgroundColor: const Color.fromARGB(255, 101, 96, 66),
        ),
         body: SingleChildScrollView( //สามารถเลื่อนดูได้ หากข้อมูลยาวเกินจอ
          child: Column(
            children: [
              const SizedBox(height: 30),
              Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/me.jpg'),
                ),
              ),
              const SizedBox(height: 20),
              const ListTile(title: Text('Name: Chotinat Sophapang'),leading: Icon(Icons.person), ),
              const ListTile(title: Text('Nickname: Maping'),leading: Icon(Icons.person),),
              const ListTile(title: Text('Age: 20'),leading: Icon(Icons.cake),),
              const ListTile(title: Text('Email: chotinat.s@ku.th'),leading: Icon(Icons.email),),
              const ListTile(title: Text('Address: 111/33 Moo 2, Tambon Lundim, Amphoe Mueang, Ratchaburi 70000',),leading: Icon(Icons.home),),
            ],
          ),
        ),
      ),
    );
  }
}
