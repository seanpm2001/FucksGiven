import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class Graph extends StatefulWidget {
  const Graph({Key? key}) : super(key: key);

  @override
  State<Graph> createState() => _GraphState();
}

class _GraphState extends State<Graph> {
  @override
  final List<ChartData> chartData = [
    ChartData('M', 9),
    ChartData('TU', 8),
    ChartData('W', 9),
    ChartData('TH', 8),
    ChartData('F', 8),
    ChartData('ST', 9),
    ChartData('SN', 9),

  ];
  Widget build(BuildContext context) {
    return
      SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(

            children:[
              Container(
                margin: EdgeInsets.all(20),
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children: [

                      Expanded(
                        child: OutlinedButton(
                            onPressed: (){},
                            child: Center(child: Text('W'))

                        ),
                      ),
                      Expanded(
                        child: OutlinedButton(onPressed: (){

                        }, child: Center(child: Text('M'))),
                      ),
                      Expanded(
                        child: OutlinedButton(onPressed: (){

                        }, child: Center(child: Text('Y'))),
                      ),

                    ],
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Text('4',style: TextStyle(color: Colors. black,fontSize: 25,fontWeight: FontWeight. bold)),
                    SizedBox(width: 8,),
                    Text('fucks given on average',style: TextStyle(color: Colors. black,fontSize: 20)),
                  ],
                ),
              ),
              SizedBox(
                height:5,
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Text('5 - 12 September',style: TextStyle(color: Colors.black45,fontSize: 17)),
                  ],
                ),
              ),
              SizedBox(
                height:5,
              ),
        Container(
                    child: SfCartesianChart(
                        primaryXAxis: CategoryAxis(),
                        series: <CartesianSeries>[
                          LineSeries<ChartData, String>(
                              color:HexColor("#29A331"),
                              dataSource: chartData,
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) => data.y,
                              markerSettings: MarkerSettings(
                                  isVisible: true,

                                  shape: DataMarkerType.circle

                              )
                          )
                        ]
                    )
                ),

            ],
          ),

        ),
      );
  }
}
class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final int? y;
}