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
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.person)),
                Tab(icon: Icon(Icons.account_box)),
                Tab(icon: Icon(Icons.accessibility)),
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_boat)),
              ],
            ),
            title: const Text('My Resume'),
          ),
          body: TabBarView(children: [tab1(), tab2(), tab3(), tab4(), tab5()]),
        ),
      ),
    );
  }

  Widget tab1() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(height: 10),
            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/me.jpg'),
              ),
            ),
            SizedBox(height: 15),
            ListTile(
              title: Text('Name: Chotinat Sophapang'),
              leading: Icon(Icons.person),
            ),
            ListTile(title: Text('Sex: Male'), leading: Icon(Icons.person)),
            ListTile(
              title: Text('Birthday: 2005-03-23'),
              leading: Icon(Icons.cake),
            ),
            ListTile(title: Text('Age: 20'), leading: Icon(Icons.cake)),
            ListTile(
              title: Text('Email: chotinat.s@ku.th'),
              leading: Icon(Icons.email),
            ),
            ListTile(
              title: Text(
                'Address: 111/33 Moo 2, Tambon Lundim, Amphoe Mueang, Ratchaburi 70000',
              ),
              leading: Icon(Icons.home),
            ),
          ],
        ),
      ),
    );
  }

  Widget tab2() {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            ListTile(
              title: Text(
                'Address: 111/33 Moo 2, Tambon Lundim, Amphoe Mueang, Ratchaburi 70000',
              ),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text('Email: chotinat.s@ku.th'),
              leading: Icon(Icons.email),
            ),
            ListTile(
              title: Text('Tel: 06-4496-0219'),
              leading: Icon(Icons.phone),
            ),
            ListTile(
              title: Text('Line: mapingkung'),
              leading: Icon(Icons.chat_bubble),
            ),
            ListTile(
              title: Text('Facebook: Maping Maping'),
              leading: Icon(Icons.chat_bubble),
            ),
            ListTile(
              title: Text('instagram: mp.p1ng'),
              leading: Icon(Icons.chat_bubble),
            ),
          ],
        ),
      ),
    );
  }

  Widget tab3() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const ListTile(title: Text('Language'),leading: Icon(Icons.language),),
            ListTile(
              title: Row(
                children: const [
                  Text('Thai: '),
                  SizedBox(width: 10), // ระยะห่างเล็กน้อยระหว่างข้อความกับดาว
                  Icon(Icons.star, color: Color.fromARGB(255, 201, 212, 54)),
                  Icon(Icons.star, color: Color.fromARGB(255, 201, 212, 54)),
                  Icon(Icons.star, color: Color.fromARGB(255, 201, 212, 54)),
                  Icon(Icons.star, color: Color.fromARGB(255, 201, 212, 54)),
                  Icon(Icons.star, color: Color.fromARGB(255, 201, 212, 54)),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: const [
                  Text('English: '),
                  SizedBox(width: 10), // ระยะห่างเล็กน้อยระหว่างข้อความกับดาว
                  Icon(Icons.star, color: Color.fromARGB(255, 201, 212, 54)),
                  Icon(Icons.star, color: Color.fromARGB(255, 201, 212, 54)),
                  Icon(Icons.star, color: Color.fromARGB(255, 201, 212, 54)),
                  Icon(Icons.star_border,color: Color.fromARGB(255, 201, 212, 54),),
                  Icon(Icons.star_border,color: Color.fromARGB(255, 201, 212, 54),),
                ],
              ),
            ), // End Language

            const ListTile(title: Text('Code'), leading: Icon(Icons.computer)),
            ListTile(
              title: Row(
                children: const [
                  Text('HTML: '),
                  SizedBox(width: 10), // ระยะห่างเล็กน้อยระหว่างข้อความกับดาว
                  Icon(Icons.star, color: Color.fromARGB(255, 201, 212, 54)),
                  Icon(Icons.star, color: Color.fromARGB(255, 201, 212, 54)),
                  Icon(Icons.star, color: Color.fromARGB(255, 201, 212, 54)),
                  Icon(Icons.star_half,color: Color.fromARGB(255, 201, 212, 54),),
                  Icon(Icons.star_border,color: Color.fromARGB(255, 201, 212, 54),),
                ],
              ),
            ), 
            ListTile(
              title: Row(
                children: const [
                  Text('Javascript: '),
                  SizedBox(width: 10), // ระยะห่างเล็กน้อยระหว่างข้อความกับดาว
                  Icon(Icons.star, color: Color.fromARGB(255, 201, 212, 54)),
                  Icon(Icons.star, color: Color.fromARGB(255, 201, 212, 54)),
                  Icon(Icons.star, color: Color.fromARGB(255, 201, 212, 54)),
                  Icon(Icons.star_border,color: Color.fromARGB(255, 201, 212, 54),),
                  Icon(Icons.star_border,color: Color.fromARGB(255, 201, 212, 54),),
                ],
              ),
            ), // End Code

            const ListTile(title: Text('Tools'), leading: Icon(Icons.computer)),
            ListTile(
              title: Row(
                children: const [
                  Text('Vs Code: '),
                  SizedBox(width: 10), // ระยะห่างเล็กน้อยระหว่างข้อความกับดาว
                  Icon(Icons.star, color: Color.fromARGB(255, 201, 212, 54)),
                  Icon(Icons.star, color: Color.fromARGB(255, 201, 212, 54)),
                  Icon(Icons.star, color: Color.fromARGB(255, 201, 212, 54)),
                  Icon(Icons.star_half,color: Color.fromARGB(255, 201, 212, 54),),
                  Icon(Icons.star_border,color: Color.fromARGB(255, 201, 212, 54),),
                ],
              ),
            ), 
            ListTile(
              title: Row(
                children: const [
                  Text('Git hub: '),
                  SizedBox(width: 10), // ระยะห่างเล็กน้อยระหว่างข้อความกับดาว
                  Icon(Icons.star, color: Color.fromARGB(255, 201, 212, 54)),
                  Icon(Icons.star, color: Color.fromARGB(255, 201, 212, 54)),
                  Icon(Icons.star, color: Color.fromARGB(255, 201, 212, 54)),
                  Icon(Icons.star_half,color: Color.fromARGB(255, 201, 212, 54),),
                  Icon(Icons.star_border,color: Color.fromARGB(255, 201, 212, 54),),
                ],
              ),
            ), 
          ],
        ),
      ),
    );
  }

  Widget tab4() {
    return GridView.count(
          primary: false,
          padding: const EdgeInsets.all(16),
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
          crossAxisCount: 2,

          children: [
            P4text(
              name: 'Education',
              descript: 'ตอนนี้กำลังศึกษาอยู่ที่ มหาวิทยาลัยเกษตรศาสตร์ วิทยาเขตกำแพงแสน คณะวิทยาศาสตร์สาขาวิทยาการคอมพิวเตอร์ ชั้นปีที่ 3',
            ),
            Image(image: AssetImage('assets/images/kukps.jpg')),
            P4text(
              name: 'Experience',
              descript: 'ไม่มีประสบการณ์การทำงาน แต่มีประสบการณ์การทำงานกลุ่มในวิชาเรียน',
            ),
            Image(image: AssetImage('assets/images/me.jpg')),
          ],
          );
  }

  Widget tab5() {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(16),
      crossAxisSpacing: 10,
      mainAxisSpacing: 5,
      crossAxisCount: 2,
      children: [
        P4text(
          name: 'Reading',
          descript: 'ชอบอ่านหนังสือต่างๆมากมาย ไม่ว่าจะเกี่ยวกับการพัฒนาโปรแกรมและเทคโนโลยีใหม่ๆ หนังสือการ์ตูน และนิยาย',
        ),
        Image(image: AssetImage('assets/images/readabook.jpg')),
        P4text(
          name: 'Chess',
          descript: 'ชอบเล่นหมากรุกสากลมากๆ ชอบเล่นกับเพื่อนๆและครอบครัว เป็นกิจกรรมที่ทำให้ได้ฝึกสมองและสนุกสนาน',
        ),
        Image(image: AssetImage('assets/images/chess.jpg')),
      ],
    );
  }
}



class P4text extends StatelessWidget {
  const P4text(
    {super.key,
    required this.name,
    required this.descript,
    });

  final String name;
  final String descript;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(name),
        ),
        ListTile(
          title: Text(descript),
        ),
      ],
    );
  }
}
