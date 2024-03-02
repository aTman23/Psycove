import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Components/postContainer.dart';
import '../Post Getter/postGetter.dart';

class PsychologistCommunityPage extends StatefulWidget {
  const PsychologistCommunityPage({super.key});

  @override
  State<PsychologistCommunityPage> createState() =>
      _PsychologistCommunityPageState();
}

class _PsychologistCommunityPageState extends State<PsychologistCommunityPage> {
  int currentIndex = 2;
  List<Post> posts = PostGetter().posts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: const Color(0xffc5edff),
        backgroundColor: const Color(0xffc5edff),
        toolbarHeight: 150,
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Helvetica(text: "Anonymous Community", size: 30, weight: FontWeight.w700),


            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.5),
                        color: Colors.white),
                    child: const Icon(Icons.arrow_back),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                InkWell(
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.5),
                        color: Colors.white),
                    child: const Icon(Icons.add),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/psychologistCreatePost');
                  },
                ),
              ],
            )
          ],
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: posts.length,
                itemBuilder: (BuildContext context, int index) {
                  return PsychologistPostContainer(
                      userName: posts[index].userName,
                      userHandle: posts[index].userHandle,
                      userImage: posts[index].userImage,
                      userPost: posts[index].userPost,
                      userPostImage: posts[index].userPostImage,
                      likeStatus: posts[index].likeStatus);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
