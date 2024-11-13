// import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DiagramBatang extends StatelessWidget {
  const DiagramBatang({super.key});

  // final List<double> values;

  // const DiagramBatang({super.key, required this.values});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.all(16.0),
      // child: BarChart(
      //   BarChartData(
      //     alignment: BarChartAlignment.spaceAround,
      //     maxY: 100,
      //     barTouchData: BarTouchData(enabled: false),
      //     titlesData: FlTitlesData(
      //       leftTitles: const AxisTitles(
      //         sideTitles: SideTitles(showTitles: true, interval: 20),
      //       ),
      //       bottomTitles: AxisTitles(
      //         sideTitles: SideTitles(
      //           showTitles: true,
      //           getTitlesWidget: (double value, TitleMeta meta) {
      //             const style = TextStyle(fontSize: 10);
      //             switch (value.toInt()) {
      //               case 0:
      //                 return const Text('09-09', style: style);
      //               case 1:
      //                 return const Text('10-09', style: style);
      //               case 2:
      //                 return const Text('11-09', style: style);
      //               case 3:
      //                 return const Text('12-09', style: style);
      //               case 4:
      //                 return const Text('13-09', style: style);
      //               case 5:
      //                 return const Text('14-09', style: style);
      //               default:
      //                 return const Text('');
      //             }
      //           },
      //         ),
      //       ),
      //     ),
      //     borderData: FlBorderData(show: false),
      //     barGroups: values.asMap().entries.map((entry) {
      //       int index = entry.key;
      //       double value = entry.value;
      //       return BarChartGroupData(
      //         x: index,
      //         barRods: [
      //           BarChartRodData(toY: value, color: Colors.blue, width: 15)
      //         ],
      //       );
      //     }).toList(),
      //   ),
      // ),
    );
  }
}
