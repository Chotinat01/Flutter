import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String zzz = 'Menu Demo';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: zzz,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text(zzz)),
          backgroundColor: const Color.fromARGB(255, 66, 173, 98),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(16),
          crossAxisSpacing: 10,
          mainAxisSpacing: 5,
          crossAxisCount: 2,
          children: const [
            MenuItem(
              image: 'assets/images/milktea.jpg',
              name: 'ชานม',
              price: 'ราคา 40 บาท',
            ),
            MenuItem(
              image: 'assets/images/milkcool.jpg',
              name: 'นมย็น',
              price: 'ราคา 50 บาท',
            ),
            MenuItem(
              image: 'assets/images/redsoda.jpg',
              name: 'น้ำแดงโซดา',
              price: 'ราคา 35 บาท',
            ),
            MenuItem(
              image: 'assets/images/greensoda.jpg',
              name: 'น้ำเขียวโซดา',
              price: 'ราคา 35 บาท',
            ),
            MenuItem(
              image: 'assets/images/lemonsoda.jpg',
              name: 'มะนาวโซดา',
              price: 'ราคา 40 บาท',
            ),
            MenuItem(
              image: 'assets/images/americano.jpg',
              name: 'อเมริกาโน่',
              price: 'ราคา 50 บาท',
            ),
          ],
          ),
      ),
    );
  }
}


// class ImageSection extends StatelessWidget {
//   const ImageSection({
//     super.key,
//     required this.image,
//     });
//     final String image; // ให้รูปเป็นString เปลี่ยนไม่ได้

//     @override
//     Widget build(BuildContext context) {
//       return Image.asset(image, width: 400, height: 200, fit: BoxFit.cover);
//     }
// }

// class TitleSection extends StatelessWidget {
//   const TitleSection({super.key, required this.name, required this.price});

//   final String name;
//   final String price;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(32),
//       child: Row(
//         children: [
//           Expanded(
//             /* 1 */
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 /* 2 */
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 8),
//                   child: Text(
//                     name,
//                     style: const TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 Text(price, style: TextStyle(color: Colors.grey[500])),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  final String image;
  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // ชิดซ้าย
      children: [
        Image.asset(image, width: 400, height: 150, fit: BoxFit.cover), // รูป
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)), // ชื่อ
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(price, style: TextStyle(color: Colors.grey[600])), // ราคา
        ),
      ],
    );
      
  }

}