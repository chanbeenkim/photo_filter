// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';

// class PickImageScreen extends StatefulWidget {
//   const PickImageScreen({super.key});

//   @override
//   State<PickImageScreen> createState() => _PickImageScreenState();
// }

// class _PickImageScreenState extends State<PickImageScreen> {
//   File? image;
//   Future pickImage() async {
//     try {
//       final image = await ImagePicker().pickImage(source: ImageSource.gallery);
//       if (image == null) return;
//       final imageTemporary = File(image.path);

//       setState(() {
//         this.image = imageTemporary;
//       });
//     } on PlatformException catch (e) {
//       print("Failed to pick image: $e");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           image != null
//               ? Image.file(
//                   image!,
//                   width: 200,
//                   height: 200,
//                 )
//               : const Text(
//                   "None",
//                 ),
//         ],
//       ),
//     );
//   }
// }
