import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PsychologistPostContainer extends StatefulWidget {
  PsychologistPostContainer(
      {super.key,
      required this.userName,
      required this.userHandle,
      required this.userImage,
      required this.userPost,
      required this.userPostImage,
      required this.likeStatus});
  final String userName;
  final String userHandle;
  final String userImage;
  final String userPost;
  final String userPostImage;
  bool likeStatus;
  @override
  State<PsychologistPostContainer> createState() =>
      _PsychologistPostContainerState();
}

class _PsychologistPostContainerState extends State<PsychologistPostContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          shape: BoxShape.rectangle,
          border: Border.all(
            width: 1,
            color: const Color(0xffc5edff),
          )),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                child: Image(
                  image: AssetImage(widget.userImage),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Helvetica(text: widget.userName, size: 15, weight: FontWeight.w600),
                  Helvetica(text: widget.userHandle, size: 12, weight: FontWeight.w600),

                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          if (widget.userPostImage == "")
            const SizedBox()
          else
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage(widget.userPostImage),
              ),
            ),
          const SizedBox(
            height: 5,
          ),
          Helvetica(text: widget.userPost, size: 15, weight: FontWeight.w500,alignment: TextAlign.start,spacing: 0.5,),

          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  widget.likeStatus = !widget.likeStatus;
                  setState(() {});
                },
                icon: Icon(widget.likeStatus
                    ? CupertinoIcons.heart_fill
                    : CupertinoIcons.heart),
                color: Colors.red,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
