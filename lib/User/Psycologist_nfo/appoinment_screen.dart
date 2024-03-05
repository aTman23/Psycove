import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:like_button/like_button.dart';
import '../../Fonts/helveticaFont.dart';
import '../models/models.dart';
import 'Appoinment_booked.dart';
import 'chat_room.dart';

class MyAppoinment extends StatefulWidget {
  MyAppoinment({super.key,required this.Details});
  @override
  State<MyAppoinment> createState() => _MyAppoinmentState();
  PsychologyProfile Details;
}
TextEditingController _dateController =TextEditingController();

class _MyAppoinmentState extends State<MyAppoinment> {
  DateTime? _selectedDate; // The date selected by the user
  final DateFormat _dateFormat = DateFormat('dd / MM / yyyy');
  String selectedTimeSlot="" ;
  @override
  Widget build(BuildContext context) {
    final timesForSelectedDate = widget.Details.Slots[_selectedDate] ?? [];
    return Scaffold(
      body: Stack(
          children: [
            Container(
              color:const Color(0xffF4F4F4),
            ),
            Container(
              height: 186.h,
              decoration: const ShapeDecoration(
                color: Color(0xffD3A3F1),
                shape: RoundedRectangleBorder(
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: IconButton(
                          icon: SvgPicture.asset(
                            'assets/backA.svg', // Replace with your SVG file path
                            width: 24,
                            height: 24,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                            // Handle button press
                          },
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 27.h,
                          child: const Helvetica(
                            text:'Book Appointment',

                              size: 24,
                              weight: FontWeight.bold,
                              color: Color(0xffFFFFFF),

                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),),
            Positioned(
              top: 65.h,
              left: 6.w,
              right: 6.w,
              child: Container(
                padding: EdgeInsets.only(left: 10.h, top: 10),
                margin: EdgeInsets.symmetric(horizontal: 21.w, vertical: 22.h),
                height: 170.h,
                width: 386.w,
                decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    border: Border.all(color:  const Color(0xffD3A3F1), width: 1),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 86.h,
                          width: 104.w,
                          child: Image.asset(
                            'assets/images/${widget.Details.Image}.png',
                            width: 104.w,
                            height: 86.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.33.w),
                          width: 185.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width:120,
                                    child: Helvetica(
                                      text:widget.Details.name,
                                      maxlines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      size: 18,
                                       weight: FontWeight.w500,
                                          color: const Color(0xff000000)),

                                  ),
                                  LikeButton(
                                    isLiked: widget.Details.Like,
                                    size: 22.h,
                                    circleColor: const CircleColor(
                                        start: Color(0xff00ddff),
                                        end: Color(0xff0099cc)),
                                    bubblesColor: const BubblesColor(
                                      dotPrimaryColor: Color(0xff33b5e5),
                                      dotSecondaryColor: Color(0xff0099cc),
                                    ),
                                  )
                                ],
                              ),
                              Helvetica(text:
                                widget.Details.Experiance,

                                  size: 12,
                                  weight: FontWeight.w500,
                                  color: const Color(0xff677294),

                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 11.w,
                                    height: 10.h,
                                    decoration: BoxDecoration(
                                        color:  const Color(0xffD3A3F1),
                                        borderRadius: BorderRadius.circular(7)),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Helvetica(
                                    text:"${widget.Details.Stories} Patient Stories",
                                    size: 12,
                                     weight: FontWeight.w500,
                                      color: const Color(0xff677294),
                                    ),

                                ],
                              ),
                              RatingBar.builder(
                                minRating: 1,
                                initialRating:widget.Details.Rate,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 16,
                                itemPadding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                ignoreGestures: true,
                                onRatingUpdate: (rating) {
                                },
                              ),
                              Helvetica(
                                text:"${ widget.Details.Rate} | ${ widget.Details.Review}",

                                size: 12,
                                 weight: FontWeight.w500,
                                  color: const Color(0xff677294),

                              ),
                              Helvetica(
                                text:" @ ${widget.Details.Price} /-" ,
                                size: 12,
                                 weight: FontWeight.w500,
                                  color: const Color(0xff677294),

                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Helvetica(
                                text:'Next Available ',

                                    size: 15,
                                    weight: FontWeight.w500,
                                    color: Color(0xffD3A3F1)),

                              Helvetica(
                                text:'10:00 AM tomorrow',

                                  size: 12,
                                  weight: FontWeight.w500,
                                  color: Color(0xff677294),

                              ),
                            ],
                          ),
                          SizedBox(
                            height: 34.h,
                            width: 80.w,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: const Color(0xffD3A3F1), // Text color
                                elevation: 2,
                                shadowColor: const Color(0xff803a9f),// Elevation
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10), // BorderRadius
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const ChatRoom()),
                                );
                              },
                              child:const Helvetica(
                                text: 'Chat',

                                  color: Colors.black,
                                  size: 12,
                                  weight: FontWeight.w600,


                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 280.h,
              left: 15.w,
              right: 30.w,
              bottom: 20.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40.h,
                    width:200.w,
                    child: TextField(
                      controller:_dateController,
                      style:  const TextStyle(
                        fontFamily: "Helvetica",
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 12.w),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(Icons.calendar_month_outlined,color:Color(0xff797C7B),),
                        hintText: 'Select Date',
                        hintStyle: const TextStyle(
                          fontFamily: "Helvetica",
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(
                            color: Colors.grey, // Regular border color
                            // Regular border thickness
                          ),
                        ),
                      ),
                      onTap: (){
                        _selectDate();
                      },
                      readOnly: true,
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  const Helvetica(text:"Select Time",
                      size: 18,
                      weight: FontWeight.w500,
                      color: Color(0xff000000),),
                  SizedBox(height: 10.h,),
                  Container(
                    height: 260.h,
                    padding: EdgeInsets.only(bottom: 12.h),
                    child:timesForSelectedDate.isEmpty
                        ?  const Center(
                      child: Helvetica(text:'No available timing for this date',
                          size: 17
                      ),
                    ):
                    GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent:100,
                          crossAxisSpacing: 8.0,
                          mainAxisSpacing: 8.0,
                          childAspectRatio: 2
                      ),
                      itemCount: timesForSelectedDate.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedTimeSlot = timesForSelectedDate[index];
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: selectedTimeSlot == timesForSelectedDate[index]
                                  ? const Color(0xffD3A3F1)
                                  :const Color(0xffFFFFFF),
                              border: Border.all(
                                  width: 1,
                                  color: const Color(0xff797C7B)
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: const EdgeInsets.all(5.0),
                            child: Center(
                              child: Helvetica(text:
                                timesForSelectedDate[index],

                                    color: selectedTimeSlot == timesForSelectedDate[index]
                                        ? Colors.white
                                        : const Color(0xffD3A3F1),
                                    size: 13

                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ]
      ),
      bottomSheet: SizedBox(
        width: double.maxFinite,
        height: 50.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: const Color(0xffD3A3F1), // Text color
                  elevation: 2, // Elevation
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // BorderRadius
                  ),
                ),
                onPressed: () {
                  if(_selectedDate ==null ||selectedTimeSlot.isEmpty ){
                    final snackBar = SnackBar(
                      backgroundColor: const Color(0xffD3A3F1),
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      content: Center(
                        child:
                        const Helvetica(
                            text:'Please Select Date and Time',
                            color: Colors.black,
                            size: 16,
                            weight: FontWeight.normal
                        ),
                      ),
                      duration: Duration(seconds: 1),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                  else
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BookAppoinment()),
                    );
                },
                child:  const Helvetica(
                  text:'Next',
                      color: Colors.black,
                      size: 16,
                      weight: FontWeight.normal

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Future <void> _selectDate() async{
    final _Picked =await showDatePicker(
      context:context,
      firstDate: DateTime.now(),
      lastDate: DateTime(2099),
      initialDate: DateTime.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor:  const Color(0xffD3A3F1), // Header background color
            hintColor: const Color(0xffD3A3F1),
            buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
            colorScheme: const ColorScheme.light(primary: Color(0xffD3A3F1)),
          ),
          child: child!,
        );
      },
    );
    if(_Picked != null){
      setState(() {
        _dateController.text=_dateFormat.format(_Picked);
        _selectedDate=_Picked;
        selectedTimeSlot='';
      });
    }
  }
}