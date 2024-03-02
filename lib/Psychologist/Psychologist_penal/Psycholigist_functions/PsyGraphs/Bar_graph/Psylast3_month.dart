import 'package:atman/Fonts/helveticaFont.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PsyLast3Month extends StatefulWidget {
  const PsyLast3Month({super.key});

  @override
  State<PsyLast3Month> createState() => _PsyLast3MonthState();
}

class _PsyLast3MonthState extends State<PsyLast3Month> {
  List<double> MonthlyPerformence =
  [5.40, 3.50, 4.0, 3.0, 5,];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        height: 190.h,
        child: BarChart(
          BarChartData(
            maxY: 6,
            minY: 0,
            gridData: FlGridData(
              show: true,
              drawVerticalLine: false,
              drawHorizontalLine: true,
            ),
            titlesData: FlTitlesData(
              rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false)
              ),
              topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false)
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  interval: 1,
                  showTitles: true,
                  reservedSize: 42,
                  getTitlesWidget: (value, meta) {
                    String text ="";
                    switch (value.toInt()){
                      case 0:
                        text= 'Work \nGoals';
                      case 1:
                        text= 'Career\n Goal';
                      case 2:
                        text= 'Learning \nGoals';
                      case 3:
                        text= 'Family\n Goals';
                      case 4:
                        text= 'Self \n Goals';
                      default:
                        return Container();
                    }
                    return Helvetica(text:text,
                      alignment: TextAlign.center,

                        size: 11,
                        weight: FontWeight.w600
                    );
                  },
                ),
              ),
              leftTitles:  AxisTitles(
                sideTitles: SideTitles(
                  interval: 1,
                  showTitles: true,
                  reservedSize: 30,
                  getTitlesWidget: (value, meta) {
                    String text ="";
                    switch (value.toInt()){
                      case 0:
                        text= '0';
                      case 2:
                        text= '1';
                      case 4:
                        text= '2';
                      case 6:
                        text= '3';
                      default:
                        return Container();
                    }
                    return Helvetica(text:text,
                      alignment: TextAlign.center,

                        size: 15,
                        weight: FontWeight.w600
                    );
                  },
                ),
              ),
            ),
            borderData: FlBorderData(show: false),
            extraLinesData: ExtraLinesData(
              horizontalLines: [
                HorizontalLine(
                  y: 0,
                  color: Colors.grey,
                  strokeWidth: 2,
                ),
              ],
            ),
            groupsSpace: 30,
            barGroups: List.generate(
              MonthlyPerformence.length,
                  (index) => BarChartGroupData(
                x: index,
                barsSpace: 10,
                barRods: [
                  BarChartRodData(
                    toY: MonthlyPerformence[index],
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffF10086),
                        Color(0xff3F00F1),
                      ],
                    ),
                    width: 12,
                    borderRadius: BorderRadius.circular(0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
