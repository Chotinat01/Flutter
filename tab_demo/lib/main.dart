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
        length: 6,
        child: Scaffold(          
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 212, 206, 144),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car),text: 'car'),
                Tab(icon: Icon(Icons.directions_transit),text: 'train'),
                Tab(icon: Icon(Icons.directions_bike),text: 'bike'),
                Tab(icon: Icon(Icons.assist_walker),text: 'walker'),
                Tab(icon: Icon(Icons.run_circle),text: 'run'),
                Tab(icon: Icon(Icons.self_improvement_sharp),text: 'self-improvement'),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              tab1(),
              tab2(),
              tab3(),
              tab4(),
              tab5(),
              tab6(),
            ],
          ),
        ),
      ),
    );
  }

  Widget tab1() {
    return const Center(
      child: Text('Tab 1 Content'),
    );
  }
  Widget tab2() {
    return const Center(
      child: Text('Tab 2 Content'),
    );
  }
  Widget tab3() {
    return const Center(
      child: Text('Tab 3 Content'),
    );
  }
  Widget tab4() {
    return const Center(
      child: Text('Tab 4 Content'),
    );
  }
  Widget tab5() {
    return const Center(
      child: Text('Tab 5 Content'),
    );
  }
  Widget tab6() {
    return const Center(
      child: Text('Tab 6 Content'),
    );
  }
}
