import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Fonts/helveticaFont.dart';
import '../Done_Alert.dart';
class CopingTechs extends StatefulWidget {
  const CopingTechs({super.key});
  @override
  State<CopingTechs> createState() => _CopingTechsState();
}

class _CopingTechsState extends State<CopingTechs> {
  bool isChecked = false;
  bool _BoxesVisible = false;
  bool _4Visible = false;
  bool _3Visible = false;
  bool _2Visible = false;
  bool _1Visible = false;
  bool _iseye = true;
  bool _ishand = false;
  bool _isear = false;
  bool _isnose = false;
  bool _istast = false;
  final List<bool> _isCheckedList = [false, false, false, false, false];
  final List<bool> _is4List = [false, false, false, false, false];
  final List<bool> _is3List = [false, false, false, false, false];
  final List<bool> _is2List = [false, false, false, false, false];
  String text= "Click on Eye  to Start the task";
  int check =0;
  bool _isoption=false;
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(200),
            child: Container(
                height: 140.h,
                decoration: const ShapeDecoration(
                  color:Color(0xffD3A3F1),
                  shape: RoundedRectangleBorder(

                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 14.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 40.h,
                            child:   const Helvetica(text:
                              '5-4-3-2-1 Technique',
                                size: 18,
                                color: Colors.white,
                                weight: FontWeight.w700,


                            ),
                          ),
                          Image.asset('assets/Coping_image/54321.png',height: 120,width: 120,),
                        ],
                      ),
                    )
                  ],
                ))),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(height: 30.h,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8.w),
                height: 260.h,
                width: 330.w,
                child:  Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        IconButton(onPressed:_iseye? (){
                          setState(() {
                            for(int i=0;i<5;i++){
                              _isCheckedList[i]=false;
                            }
                            _BoxesVisible = true;
                            if( _BoxesVisible==true){
                              text="See 5 Things around you and check boxes";
                            }
                          });
                        }:null,
                            icon: SvgPicture.asset("assets/Coping_icons/eye.svg")),
                        Container(
                          height: 200.h,
                          width: 50.w,
                          alignment: Alignment.topLeft,
                          child: ListView.builder(
                              itemCount: 5,
                              itemBuilder:(context,index){
                                return Checkbox(
                                  checkColor: Colors.white,
                                  value: _isCheckedList[index],
                                  onChanged: _BoxesVisible ? (bool? value) {
                                    setState(() {
                                      _isCheckedList[index]  = value!;
                                      int cnt=0;
                                      for(int i=0;i<5;i++){
                                        if(_isCheckedList[i] ==false){
                                          cnt++;
                                          text="please check all boxes";
                                        }
                                      }
                                      if(cnt==0){
                                        _ishand =true;
                                        text="Good ! Go to the next step";
                                      }
                                    });
                                  }:null,
                                );
                              } ),
                        ),
                      ],),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(onPressed:_ishand? (){
                          setState(() {
                            for(int i=0;i<4;i++){
                              _is4List[i]=false;
                            }
                            _iseye=false;
                            _4Visible = true;
                            _BoxesVisible= false;
                            text="Touch 4 things around you";
                          });
                        }:null,
                            icon: SvgPicture.asset("assets/Coping_icons/hand.svg")),
                        Container(
                          height: 200.h,
                          width: 50.w,
                          alignment: Alignment.topLeft,
                          child: ListView.builder(
                              itemCount: 4,
                              itemBuilder:(context,index){
                                return Checkbox(
                                  checkColor: Colors.white,
                                  value: _is4List[index],
                                  onChanged: _4Visible? (bool? value) {
                                    setState(() {
                                      _is4List[index]  = value!;
                                      int cmt=0;
                                      for(int i=0;i<4;i++){
                                        if(_is4List[i] ==false){
                                          cmt++;
                                          text="please check all boxes";
                                        }
                                      }
                                      if(cmt==0){
                                        _isear=true;
                                        text=" You are doing Good, Go to the next step";
                                      }
                                    });
                                  }:null,
                                );
                              } ),
                        ),
                      ],),
                    Column(
                      children: [
                        IconButton(onPressed:_isear?(){
                          setState(() {
                            for(int i=0;i<3;i++){
                              _is3List[i]=false;
                            }
                            _ishand=false;
                            _3Visible = true;
                            _4Visible =false;
                            text ="Hear 3 things around you";
                            // Toggle the visibility of the check boxes
                          });
                        }:null,
                            icon: SvgPicture.asset("assets/Coping_icons/ear.svg",color:Colors.orange,)),
                        Container(
                          height: 200.h,
                          width: 50.w,
                          alignment: Alignment.topLeft,
                          child: ListView.builder(
                              itemCount: 3,
                              itemBuilder:(context,index){
                                return Checkbox(
                                  checkColor: Colors.white,
                                  value: _is3List[index],
                                  onChanged:_3Visible? (bool? value) {
                                    setState(() {
                                      _is3List[index]  = value!;
                                      int cmt=0;
                                      for(int i=0;i<3;i++){
                                        if(_is3List[i] ==false){
                                          cmt++;
                                          text="please check all boxes";
                                        }
                                      }
                                      if(cmt==0){
                                        _isnose=true;
                                        text=" You are doing Good, Go to the next step";
                                      }
                                    });
                                  }:null,
                                );
                              } ),
                        ),
                      ],),
                    Column(
                      children: [
                        IconButton(onPressed: _isnose?(){
                          setState(() {
                            for(int i=0;i<2;i++){
                              _is2List[i]=false;
                            }
                            _isear=false;
                            _2Visible = true;
                            _3Visible=false;
                            text="Smell 2 things around you";
                          });
                        }:null,
                            icon: SvgPicture.asset("assets/Coping_icons/nose.svg",)),
                        Container(
                          height: 200.h,
                          width: 50.w,
                          alignment: Alignment.topLeft,
                          child: ListView.builder(
                              itemCount: 2,
                              itemBuilder:(context,index){
                                return Checkbox(
                                  checkColor: Colors.white,
                                  value: _is2List[index],
                                  onChanged: _2Visible?(bool? value) {
                                    setState(() {
                                      _is2List[index]  = value!;
                                      int cmt=0;
                                      for(int i=0;i<2;i++){

                                        if(_is2List[i] ==false){
                                          cmt++;
                                          text="please check all boxes";
                                        }
                                      }
                                      if(cmt==0){
                                        _istast=true;
                                        text=" You are doing Good, Go to the next step";
                                      }
                                    });
                                  }:null,
                                );
                              } ),
                        ),
                      ],),
                    Column(
                      children: [
                        IconButton(onPressed:_istast?(){
                          setState(() {
                            isChecked =false;
                            _isnose=false;
                            _1Visible =true;
                            _2Visible=false;
                            text ="Taste one thing ";
                          });
                        }:null,
                            icon: SvgPicture.asset("assets/Coping_icons/tast.svg",)),
                        Container(
                            height: 200.h,
                            width: 50.w,
                            alignment: Alignment.topLeft,
                            child: Checkbox(
                              checkColor: Colors.white,
                              value: isChecked ,
                              onChanged: _1Visible ? (bool? value)  {
                                setState(() {
                                  isChecked  = value!;
                                  if(isChecked==true) {
                                    _isoption=true;
                                    text = "Congratulations. You Completed the Task";
                                  }
                                  else{
                                    _isoption=false;
                                    text ="Coplete task please!";
                                  }
                                });
                              }:null,
                            )
                        ),

                      ],),
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Helvetica(text: text,
                    size: 17,
                    weight: FontWeight.w500,

                  alignment: TextAlign.center,),

              ),
              SizedBox(height: 25.h,),
              Container(
                padding: EdgeInsets.symmetric(horizontal:30.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: CircleAvatar(
                          radius:35,
                          backgroundColor: _isoption?const Color(0xffD3A3F1):Colors.grey,
                          child: const Icon(Icons.repeat,size: 30,)),
                      onPressed:_isoption? () {
                        final key = GlobalKey<_CopingTechsState>();
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CopingTechs(key: key),
                          ),
                        );
                      }:null,
                    ),
                    Container(
                      width: 100.w,
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: const Color(0xffD3A3F1), // Text color
                          elevation: 2, // Elevation
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // BorderRadius
                          ),
                        ),
                        onPressed:_isoption? () {
                          DoneAlertBox(context);
                        }:null,
                        child:  const Helvetica(text:
                          'Done',
                              color:Color(0xff000000),
                              size: 16,
                              weight: FontWeight.bold

                        ),
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
}