import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';


class EmojiButton extends StatefulWidget {
  const EmojiButton({super.key, required this.emojiPath, required this.text, required this.list});
  final String emojiPath;
  final String text;
  final List<Widget> list;

  @override
  State<EmojiButton> createState() => _EmojiButtonState();
}

class _EmojiButtonState extends State<EmojiButton> {
  late double currentValue;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          Center(
            child: Image(
              image: AssetImage(
                widget.emojiPath,
              ),
              width: 40,
              height: 40,
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
        currentValue = 0;
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                elevation: 10,
                child: SizedBox(
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image(
                        image: AssetImage(widget.emojiPath),
                        width: 40,
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:
                           widget.list,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFFD3A3F1)),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                          minimumSize: MaterialStatePropertyAll(
                            Size(100, 40),
                          ),
                        ),
                        child: const Helvetica(
                          text: "Done",
                          size: 18,
                          weight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
      },
    );
  }
}
