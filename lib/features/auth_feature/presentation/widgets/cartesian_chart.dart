import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:happy_texting/core/constants/colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CartesianChart extends StatelessWidget {
  const CartesianChart({
    Key? key,
  }) : super(key: key);

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
              ChartData('8/12', 0),
              ChartData('9/12', 28),
              ChartData('10/12', 34),
              ChartData('11/12', 32),
              ChartData('12/12', 30),
              ChartData('13/12', 50)
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
  final double? y;
}
