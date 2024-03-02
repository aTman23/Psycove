import 'dart:io';
import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PsychologistCreatePost extends StatefulWidget {
  const PsychologistCreatePost({super.key});

  @override
  State<PsychologistCreatePost> createState() => _PsychologistCreatePostState();
}

class _PsychologistCreatePostState extends State<PsychologistCreatePost> {
  File? selectImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF93defe),
      appBar: AppBar(
        surfaceTintColor: const Color(0xff8cddff),
        backgroundColor: const Color(0xff8cddff),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Helvetica(text: "Create Post",weight: FontWeight.w700, size: 27,),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                color: const Color(0xFFb4e8fe),
                child: Column(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: const TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(CupertinoIcons.pencil),
                            hintText: "Write a Title",
                            hintStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500, fontFamily: "Helvetica"),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    if (selectImage != null)
                      Container(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 0),
                        width: 400,
                        height: 300,
                        child: Image.file(
                          selectImage!,
                        ),
                      ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          const TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(CupertinoIcons.pencil),
                              hintText: "Write a Description",
                              hintStyle: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500, fontFamily: "Helvetica"),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(0),
                                      bottomLeft: Radius.circular(0))),
                            ),
                            maxLines: 4,
                            minLines: 1,
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 20),
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  color: Colors.white,
                                  child: IconButton(
                                      onPressed: () {
                                        _pickImageFromGallery();
                                      },
                                      icon:
                                          const Icon(Icons.perm_media_rounded)),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  style: const ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                      Color(
                                        0xffe93defe,
                                      ),
                                    ),
                                  ),
                                  child: Helvetica(text: "Post",weight: FontWeight.w700,size: 15,),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future _pickImageFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnedImage == null) {
      return;
    }
    setState(() {
      selectImage = File(returnedImage.path);
    });
  }
}
