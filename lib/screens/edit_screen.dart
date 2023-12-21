import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../widgets/edit_screen_title.dart';
import '../widgets/edit_screen_if.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  File? _image;
  final ImagePicker picker = ImagePicker();

  Future getImage(ImageSource imageSource) async {
    final image = await picker.pickImage(source: imageSource);
    if (image != null) {
      setState(
        () {
          _image = File(image.path);
        },
      );
    }
  }

  Widget showImage() {
    return Container(
      color: const Color(0xffd0cece),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
      child: Center(
        child: _image == null
            ? const Text("No image selected.")
            : Image.file(
                File(_image!.path),
              ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Image(
              image: AssetImage("images/paris.jpg"),
            ),
            Container(
              color: Colors.green,
              height: 3,
            ),
            const EditScreenTitle(
              title1: "Daily film",
              title2: "23/12/14",
              title3: "@beenfilm",
              title4: "@beenfilm",
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                children: [
                  Icon(Icons.photo_size_select_actual_rounded),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "B&W",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 220,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("B&W tip!"),
                      Text("옛날 사진관을 떠올리게 하는 따뜻한 느낌의 흑백 필터입니다."),
                      SizedBox(
                        height: 20,
                      ),
                      Text("풍경, 인물, 셀카, 애완동물 등 모든 사진에 잘 어울려 활용도가 높습니다."),
                      Text("사진에 따라 밝기를 낮추면 더욱 감도 있는 흑백사진을 얻을 수 있습니다."),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const EditScreenIf(
              subtitle1: "Season.",
              subtitle2: "Winter",
              subtitle3: "Time.",
              subtitle4: "03:00AM",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                getImage(ImageSource.camera);
              },
              child: const Text(
                "이 필터로 사진 찍기",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                getImage(ImageSource.gallery);
              },
              child: const Text(
                "이 필터로 사진 편집",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
