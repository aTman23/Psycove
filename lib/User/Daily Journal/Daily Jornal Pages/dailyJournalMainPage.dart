
import 'package:flutter/material.dart';

import 'oldNotes.dart';

class DailyJournalMain extends StatefulWidget {
  const DailyJournalMain({super.key});

  @override
  State<DailyJournalMain> createState() => _DailyJournalMainState();
}

class _DailyJournalMainState extends State<DailyJournalMain> {
  final FocusNode _focusNode = FocusNode();
  final FocusNode _focusNode1 = FocusNode();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: const Color(0xCCD3A3F1),
        backgroundColor: const Color(0xCCD3A3F1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(_focusNode1.hasFocus ? 20 : 0),
            bottomRight: Radius.circular(_focusNode1.hasFocus ? 20 : 0),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Navigator.pushReplacementNamed(context, '/homepage');
          // Navigator.pop(context);
          // Navigator.pop(context);
          DateTime initDate = DateTime.now();
          final DateTime? picker = await showDatePicker(context: context, firstDate: DateTime(2000), lastDate: DateTime.now(), initialDate: initDate,);
          if (picker != null && picker != initDate)
            {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return OldNotes(date: picker);
              }));
            }

        },
        child: const Icon(Icons.calendar_month_rounded),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: screenSize.width,
                  height: 100,
                  // color: Color(0xCCD3A3F1),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft:
                          Radius.circular(!_focusNode1.hasFocus ? 20 : 0),
                      bottomRight:
                          Radius.circular(!_focusNode1.hasFocus ? 20 : 0),
                    ),
                    color: !_focusNode1.hasFocus
                        ? const Color(0xCCD3A3F1)
                        : Colors.transparent,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: (screenSize.width * 0.75),
                        child: TextField(
                          focusNode: _focusNode,
                          decoration: const InputDecoration(
                            hintText: "What's on your mind...?",
                            hintStyle: TextStyle(
                              fontFamily: "Helvetica",
                                  fontWeight: FontWeight.w500, fontSize: 25),

                            border: OutlineInputBorder(
                                borderSide: BorderSide.none),
                          ),
                          style: TextStyle(fontFamily: "Helvetica",
                                fontWeight: FontWeight.w500, fontSize: 25),

                          onTap: () {
                            _focusNode.requestFocus();
                            _focusNode1.unfocus();
                            setState(() {});
                          },
                        ),
                      ),
                      const Image(
                        image: AssetImage(
                            "assets/images/bbfa317613f0905c764f6d32fee9a778.png"),
                        width: 60,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(20),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent),
              child: Stack(
                children: [
                  Container(
                    width: double.maxFinite,
                  ),
                  TextField(
                    focusNode: _focusNode1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      hintText: "Write here...",
                      hintStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                      fillColor: _focusNode1.hasFocus
                          ? const Color(0xCCD3A3F1)
                          : Colors.transparent,
                      filled: true,
                    ),
                    style: const TextStyle(fontFamily: "Helvetica",
                            fontSize: 20, fontWeight: FontWeight.w400),
                    minLines: 18,
                    maxLines: 30,
                    onTap: () {
                      _focusNode1.requestFocus();
                      _focusNode.unfocus();
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
