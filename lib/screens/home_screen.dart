import 'package:flutter/material.dart';
import 'package:photo_filter/screens/edit_screen.dart';
import '../widgets/home_slide.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(
      initialPage: 0,
    );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.black87,
          onPressed: () {},
          icon: const Icon(Icons.camera_outlined),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              color: Colors.black87,
              Icons.drive_folder_upload_outlined,
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0.3,
      ),
      backgroundColor: Colors.white,
      body: PageView(
        controller: pageController,
        scrollDirection: Axis.vertical,
        children: const [
          HomeSlide(
            image: "images/paris.jpg",
            title: '필터 정보 보기 ->',
            editScreen: EditScreen(),
          ),
          HomeSlide(
            image: "images/paris.jpg",
            title: '필터 정보 보기 ->',
            editScreen: EditScreen(),
          ),
          HomeSlide(
            image: "images/paris.jpg",
            title: '필터 정보 보기 ->',
            editScreen: EditScreen(),
          ),
        ],
      ),
    );
  }
}
