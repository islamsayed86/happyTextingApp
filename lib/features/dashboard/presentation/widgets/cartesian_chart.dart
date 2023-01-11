import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CartesianChart extends StatelessWidget {
  CartesianChart({
    Key? key,
  }) : super(key: key);
  final int xAxis = Random(0).nextInt(12) + 1;
  final int yAxis = Random().nextInt(8) + 1;
  final int yAxis1 = Random().nextInt(8) + 1;
  final int yAxis2 = Random().nextInt(8) + 1;
  final int yAxis3 = Random().nextInt(8) + 1;
  final int yAxis4 = Random().nextInt(8) + 1;
  final int months = Random().nextInt(12) + 1;
  final int day1 = Random().nextInt(31) + 1;
  final int day2 = Random().nextInt(31) + 1;
  final int day3 = Random().nextInt(31) + 1;
  final int day4 = Random().nextInt(31) + 1;
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      margin: EdgeInsets.fromLTRB(14.5.sp, 0, 0, 20.5.sp),
      plotAreaBorderWidth: 0,
      primaryXAxis: CategoryAxis(
          edgeLabelPlacement: EdgeLabelPlacement.shift,
          axisLine: const AxisLine(width: 0),
          majorTickLines: const MajorTickLines(width: 0),
          labelPlacement: LabelPlacement.onTicks,
          majorGridLines: const MajorGridLines(width: 0)),
      primaryYAxis: NumericAxis(
          axisLine: const AxisLine(width: 0),
          edgeLabelPlacement: EdgeLabelPlacement.shift,
          majorTickLines: const MajorTickLines(width: 0),
          majorGridLines: const MajorGridLines(width: 0),
          labelFormat: '{value}K'),
      series: [
        // Initialize line series
        AreaSeries<ChartData, String>(
            color: kLightBlueColor2,
            borderDrawMode: BorderDrawMode.all,
            borderColor: kChartAreaBorderColor,
            borderWidth: 1.sp,
            dataSource: [
              // Bind data source
              ChartData('$xAxis/$months', 0),
              ChartData('$day1/$months', yAxis1),
              ChartData('$day2/$months', yAxis3),
              ChartData('$day3/$months', yAxis2),
              ChartData('$day4/$months', yAxis4),
            ],
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y)
      ],
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final int y;
}
