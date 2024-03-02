import 'package:atman/Fonts/helveticaFont.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Bar_graph/Last6_month.dart';
import 'Bar_graph/Last_7.dart';
import 'Bar_graph/Last_year.dart';
import 'Bar_graph/Total_perfm.dart';
import 'Bar_graph/last3_month.dart';
import 'Bar_graph/month_graph.dart';

class MyPerformence extends StatefulWidget {
  const MyPerformence({super.key});

  @override
  State<MyPerformence> createState() => _MyPerformenceState();
}

class _MyPerformenceState extends State<MyPerformence> {
  final Map<DateTime, List<double>> _productionData = {
    DateTime(2024, 1, 18): [5, 3, 4, 3.5, 6, 4.5, 4],
    DateTime(2024, 1, 19): [3, 2, 6, 4.5, 4, 5, 3],
  };
  List<double> weeklyPerformence = [
    4.40,
    3.50,
    5.0,
    3.0,
    4,
    4.5,
    3,
  ];
  String _selectedItem = 'Last 7 Days';
  final PageController _pageController = PageController();
  DateTime _selectedDate = DateTime(2024, 1, 18);
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<double> selectedProduction = _productionData[_selectedDate] ?? [];
    return Scaffold(
      backgroundColor: const Color(0xffD3A3F1),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(170),
          child: Container(
              height: 160.h,
              decoration: const ShapeDecoration(
                color: Color(0xffD3A3F1),
                shape: RoundedRectangleBorder(),
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
                      const Spacer(),
                      SizedBox(
                        height: 27.h,
                        child: const Helvetica(
                          text:'Profile',
                          size: 24,
                           weight: FontWeight.bold,
                            color: Color(0xffFFFFFF),

                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.more_vert_outlined,
                        size: 24,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10.w,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Row(
                      children: [
                        Container(
                          height: 63,
                          width: 63,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.5),
                              color: const Color(0xff938CC6)),
                          child: const Icon(
                            Icons.calendar_month,
                            size: 27,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        const Column(
                          children: [
                            Helvetica(text: "2023"),
                            Helvetica(
                              text: "August",
                              size: 20,
                               weight: FontWeight.w600,

                            ),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {
                              _selectDate(context);
                            },
                            icon: const Icon(
                              Icons.expand_circle_down_rounded,
                              size: 24,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  )
                ],
              ))),
      body: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Color(0xffF4F4F4),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(28), topLeft: Radius.circular(28))),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                child: const Helvetica(
                  text:"Performance",

                    size: 21,
                    weight: FontWeight.w600,

                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 250.h,
                padding:
                EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
                child: LineChart(
                  LineChartData(
                    titlesData: FlTitlesData(
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 42,
                          getTitlesWidget: (value, meta) {
                            String text = "";
                            switch (value.toInt()) {
                              case 0:
                                text = 'Sun';
                              case 1:
                                text = 'Mon';
                              case 2:
                                text = 'Tue';
                              case 3:
                                text = 'Wed';
                              case 4:
                                text = 'Thur';
                              case 5:
                                text = 'Fri';
                              case 6:
                                text = 'Sat';
                              default:
                                return Container();
                            }
                            return Helvetica(
                              text:text,
                              size: 12,
                               weight: FontWeight.w600);
                          },
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          interval: 1,
                          showTitles: true,
                          reservedSize: 50,
                          getTitlesWidget: (value, meta) {
                            final SizedBox con;
                            switch (value.toInt()) {
                              case 1:
                                con = SizedBox(
                                    height: 45,
                                    width: 45,
                                    child: Image.asset(
                                        "assets/graph_emoji/joyf.png"));
                              case 2:
                                con = SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: Image.asset(
                                        "assets/graph_emoji/smilef.png"));
                              case 3:
                                con = SizedBox(
                                    height: 42,
                                    width: 42,
                                    child: Image.asset(
                                        "assets/graph_emoji/surprisedf.png"));
                              case 4:
                                con = SizedBox(
                                    height: 39,
                                    width: 39,
                                    child: Image.asset(
                                        "assets/graph_emoji/sadf.png"));
                              case 5:
                                con = SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: Image.asset(
                                        "assets/graph_emoji/fearf.png"));
                              case 6:
                                con =SizedBox(
                                    child: Image.asset(
                                        "assets/graph_emoji/angryf.png"));
                              default:
                                return Container();
                            }

                            return con;
                          },
                        ),
                      ),
                    ),
                    borderData: FlBorderData(show: false),
                    gridData: FlGridData(
                        show: true,
                        drawHorizontalLine: false,
                        drawVerticalLine: false,
                        getDrawingVerticalLine: (value) {
                          return const FlLine(
                            color: Colors.grey,
                            strokeWidth: 0.8,
                          );
                        }),
                    minX: 0,
                    maxX: selectedProduction.length.toDouble() - 1,
                    minY: 0,
                    maxY: 6,
                    lineBarsData: [
                      LineChartBarData(
                        spots: List.generate(
                          selectedProduction.length,
                              (index) => FlSpot(
                              index.toDouble(), selectedProduction[index]),
                        ),
                        isCurved: true,
                        gradient: const LinearGradient(
                            colors: [Color(0xffF10086), Color(0xff3F00F1)]),
                        color: Colors.blue,
                        dotData: FlDotData(
                          show: true,
                          getDotPainter: (spot, percent, barData, index) {
                            return FlDotCirclePainter(
                              radius: 6, // Increase the radius of the dot
                              color: const Color(0xffF10086),
                              strokeWidth: 3,
                              strokeColor: Colors.white,
                            );
                          },
                        ),
                        barWidth: 5,
                        belowBarData: BarAreaData(
                            show: true,
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  const Color(0xffF10086).withOpacity(0.80),
                                  const Color(0xffFF8FCD).withOpacity(0.84)
                                ])),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(height: 250.h, child: _buildSelectedContainer()),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: DropdownButton<String>(
                  value: _selectedItem,
                  items: [
                    'Last 7 Days',
                    'Last Month',
                    'Last 3 Months',
                    'Last 6 months',
                    'Last year',
                    'Total Performance'
                  ].map((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Helvetica(
                        text:item,
                        size: 18,
                         weight: FontWeight.w600),

                    );
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      _selectedItem = value ?? 'Last 7 days';
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2023),
      lastDate: DateTime(2025),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: const Color(0xffD3A3F1), // Header background color
            hintColor: const Color(0xffD3A3F1),
            buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
            colorScheme: const ColorScheme.light(primary: Color(0xffD3A3F1)),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Widget _buildSelectedContainer() {
    switch (_selectedItem) {
      case 'Last 7 Days':
        return Container(
          margin: const EdgeInsets.all(5),
          child: const Center(
            child: Last7Days(),
          ),
        );
      case 'Last Month':
        return const Center(
          child: MonthGraph(),
        );
      case 'Last 3 Months':
        return const Center(child: Last3Month());
      case 'Last 6 months':
        return const Center(child: Last6Month());
      case 'Last year':
        return const Center(
          child: LastYear(),
        );
      case 'Total Performance':
        return const Center(
          child: TotalPerformance(),
        );
      default:
        return Container();
    }
  }
}