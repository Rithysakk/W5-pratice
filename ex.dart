// EX-1
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Define MyApp 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('My Hobbie'),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
             
  HobbyCard(
            icon: Icons.travel_explore,
            label: 'Traveling',
            backgroundColor: Color.fromARGB(255, 2, 180, 41),
              ),
   SizedBox(height: 10),
   HobbyCard(
           label: 'Skating',
           icon: Icons.skateboarding,
           backgroundColor: Color.fromARGB(255, 63, 134, 192),
              ),
              SizedBox(height: 10),
              HobbyCard(
                label: 'race',
                icon: Icons.directions_car, 
                backgroundColor: Colors.red,
              ),
            ],
          ),
        ),
      ), // Closes Scaffold
    ); // Closes MaterialApp and ends the return statement
  } // Closes the build method
}

//  HobbyCard widget
class HobbyCard extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color backgroundColor;

  const HobbyCard({
    super.key,
    required this.label,
    required this.icon,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      margin: const EdgeInsets.all(5.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
         child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            
            child: Icon(icon, size: 25, color: Colors.white),
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

// EX-2

// void main() {
//   runApp(const MyApp());
// }

// enum ButtonType { primary, secondary, disabled }
// enum IconPosition { left, right }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Custom Button'),
//           backgroundColor: Colors.grey,
//         ),
//         body: Container(
//           color: Colors.grey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: const [
//               CustomButton(
//                 icon: Icons.check,
//                 label: 'Submit',
//                 type: ButtonType.primary,
//                 iconPosition: IconPosition.left,
//               ),
//               SizedBox(height: 10),
//               CustomButton(
//                 label: 'Time',
//                 icon: Icons.access_time,
//                 type: ButtonType.secondary,
//                 iconPosition: IconPosition.right,
//               ),
//               SizedBox(height: 10),
//               CustomButton(
//                 label: 'Account',
//                 icon: Icons.account_tree,
//                 type: ButtonType.disabled,
//                 iconPosition: IconPosition.right,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CustomButton extends StatelessWidget {
//   final String label;
//   final IconData icon;
//   final ButtonType type;
//   final IconPosition iconPosition;

//   const CustomButton({
//     super.key,
//     required this.label,
//     required this.icon,
//     this.type = ButtonType.primary,
//     this.iconPosition = IconPosition.left,
//   });

 
//   Color _getColor() {
//     switch (type) {
//       case ButtonType.primary:
//         return Colors.blue;
//       case ButtonType.secondary:
//         return Colors.green;
//       case ButtonType.disabled:
//         return const Color.fromARGB(255, 128, 127, 127);
//     }
//   }

  
//   Color _getTextColor() {
//     if (type == ButtonType.disabled) {
//       return const Color.fromARGB(115, 0, 0, 0);
//     } else {
//       return Colors.white;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: _getColor(), 
//       margin: const EdgeInsets.all(8.0),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: iconPosition == IconPosition.right
//               ? [
//                   Text(
//                     label,
//                     style: TextStyle(fontSize: 20.0, color: _getTextColor()),
//                   ),
//                   const SizedBox(width: 8.0),
//                   Icon(icon, size: 40.0, color: _getTextColor()),
//                 ]
//               : [
//                   Icon(icon, size: 40.0, color: _getTextColor()),
//                   const SizedBox(width: 8.0),
//                   Text(
//                     label,
//                     style: TextStyle(fontSize: 20.0, color: _getTextColor()),
//                   ),
//                 ],
//         ),
//       ),
//     );
//   }
// }

//EX-3
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// // Define MyApp 
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: const Color.fromARGB(255, 0, 110, 255),
//         appBar: AppBar(
//           title: const Text('Products'), // Fixed typo: Prodcuts -> Products
//           backgroundColor: Colors.white,
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: const [
//              ProductCard(product: Product.dart),
//               SizedBox(height: 20),
//               ProductCard(product: Product.flutter),
//               SizedBox(height: 20),
//               ProductCard(product: Product.firebase), 
             
 
//             ],
//           ),
//         ),
//       ), // Closes Scaffold
//     ); // Closes MaterialApp and ends the return statement
//   } // Closes the build method
// }

// //  emum for Products
// enum Product {
//   dart(
//     title: 'Dart',
//     description: 'The best object language',
//     image: 'assets/dart.png',
//   ),
//   flutter(
//     title: 'Flutter',
//     description: 'The best mobile widget library',
//     image: 'assets/flutter.png',
//   ),
//   firebase(
//     title: 'Firebase',
//     description: 'The best cloud database',
//     image: 'assets/firebase.png',
//   );

  
//   final String title;
//   final String description;
//   final String image;

  
//   const Product({
//     required this.title,
//     required this.description,
//     required this.image,
//   });
// }

// class ProductCard  extends StatelessWidget {
//   final Product product;

//   const ProductCard({
//     super.key,
//     required this.product,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
     
      
//       child: Padding(
//         padding: const EdgeInsets.all(20.0),
//          child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(20),
            
//             child: Image.asset(product.image, height: 100, width: 100),
//           ),
//           Text(
//             product.title,
//             style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0)),
//             ),  
//           Text(
//             product.description,
//             style: const TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
//             ),
          
//           ],
//         ),
//       ),
//     );
//   }
//}


// // EX-4
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// // Define MyApp
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
// Widget build(BuildContext context) {
//   return MaterialApp(
//     home: Scaffold(
//       backgroundColor: const Color.fromARGB(255, 255, 255, 255),
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 116, 165, 240),
//          actions: [
//             IconButton(
//               icon: const Icon(Icons.menu),
//               onPressed: () {},
//             ),
//           ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: SingleChildScrollView(  
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: const [
              
//               const WeatherCard(weather: Weather.cloudy),
//               const SizedBox(height: 20), 
//               const WeatherCard(weather: Weather.sunnyCloudy), 
//               const SizedBox(height: 20), 
//               const WeatherCard(weather: Weather.sunny), 
//               const SizedBox(height: 20), 
              
//               const WeatherCard(weather: Weather.verySunny),
//               const SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ), // Closes Scaffold
//     )
//     );// Closes MaterialApp and ends the return statement
//   } // Closes the build method
// }

// //  enum for Weather 
// enum Weather {
//   cloudy(
//     title: 'Phnom Penh',
//     maxTemp: 30.0,
//     minTemp: 10.0,
//     currentTemp: 12.2,
//     image: 'assets/cloudy.png',
//     gradient: [
//       Color.fromARGB(255, 91, 14, 173),
//       Color.fromARGB(255, 122, 42, 202)
//     ],
//   ),
//   sunnyCloudy(
//     title: 'Paris',
//     maxTemp: 40.0,
//     minTemp: 10.0,
//     currentTemp: 22.2,
//     image: 'assets/sunnyCloudy.png',
//     gradient: [
//       Color.fromARGB(255, 88, 192, 169),
//       Color.fromARGB(255, 108, 195, 179)
//     ],
//   ),
//   sunny(
//     title: 'Rome',
//     maxTemp: 45.0,
//     minTemp: 10.0,
//     currentTemp: 45.2,
//     image: 'assets/sunny.png',
//     gradient: [Color.fromARGB(255, 193, 81, 133), Color(0xFFFF5E62)],
//   ),
//   verySunny(
//     title: 'Toulouse',
//     maxTemp: 45.0,
//     minTemp: 10.0,
//     currentTemp: 45.2,
//     image: 'assets/veryCloudy.png',
//     gradient: [
//       Color.fromARGB(255, 212, 164, 106),
//       Color.fromARGB(255, 183, 136, 85)
//     ],
//   );

//   final String title;
//   final double minTemp;
//   final double maxTemp;
//   final double currentTemp;
//   final String image;
//   final List<Color> gradient;

//   const Weather({
//     required this.title,
//     required this.minTemp,
//     required this.maxTemp,
//     required this.currentTemp,
//     required this.image,
//     required this.gradient,
//   });
// }


// class WeatherCard extends StatelessWidget {

//   final Weather weather;


//   const WeatherCard({
//     super.key,
//     required this.weather,
//   });

//   @override
//  Widget build(BuildContext context) {
//     return PhysicalModel(
//       color: Colors.white,
//       elevation: 6,
//       borderRadius: BorderRadius.circular(20),
//       clipBehavior: Clip.antiAlias,
//       child: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: weather.gradient,
//             begin: Alignment.centerLeft,
//             end: Alignment.centerRight,
//           ),
//         ),
//         padding: const EdgeInsets.all(16.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [

//             Row(
//               children: [
//                 CircleAvatar(
//                   radius: 30,
//                   backgroundImage: AssetImage(weather.image),
//                 ),
//                 const SizedBox(width: 12),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       weather.title,
//                       style: const TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                     Text(
//                       'Min: ${weather.minTemp}°C\nMax: ${weather.maxTemp}°C',
//                       style: const TextStyle(
//                         fontSize: 14,
//                         color: Colors.white70,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),


//             Text(
//               '${weather.currentTemp}°C',
//               style: const TextStyle(
//                 fontSize: 22,
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }