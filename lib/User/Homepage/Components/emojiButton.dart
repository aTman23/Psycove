import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';


class EmojiButton extends StatefulWidget {
  const EmojiButton({super.key, required this.emojiPath, required this.text});
  final String emojiPath;
  final String text;

  @override
  State<EmojiButton> createState() => _EmojiButtonState();
}

class _EmojiButtonState extends State<EmojiButton> {
  late double currentValue;
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          Center(
            child: AnimatedContainer(

              duration: const Duration(milliseconds: 350),
              width: isTapped?60:40,
              onEnd: ()
              {
                setState(() {
                  isTapped = false;
                });
              },
              child: Image(
                image: AssetImage(
                  widget.emojiPath,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Helvetica(
            text: widget.text,
            size: 13,
            weight: FontWeight.w600,
          )
        ],
      ),
      onTap: () {

        setState(() {
          isTapped = true;
        });
      },
    );
  }
}
