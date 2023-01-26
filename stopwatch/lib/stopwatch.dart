import 'dart:async';
import 'package:flutter/material.dart';

class StopWatch extends StatefulWidget {
  const StopWatch({Key? key}) : super(key: key);

  @override
  _StopWatchState createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {

  int seconds = 0, minutes = 0, hours = 0;
  String digitSeconds = "00", digitMinutes = "00", digitHours = "00";
  Timer? timer;
  bool started = false;
  List laps = [];

  void stop(){
    timer!.cancel();
    setState(() {
      started = false;
    });
  }
  void reset(){
    timer!.cancel();
    setState(() {
      seconds = 0;
      minutes = 0;
      hours = 0;

      digitSeconds = "00";
      digitMinutes = "00";
      digitHours = "00";

      started = false;
    });
  }

  void start(){
    started = true;
    timer = Timer.periodic(Duration(seconds : 1), (timer) {
      int localSeconds = seconds + 1;
      int localMinutes = minutes ;
      int localHours = hours ;

      if (localSeconds > 59){
        if(localMinutes > 59){
          localHours++;
          localMinutes = 0;
        }
        else{
          localMinutes++;
          localSeconds = 0;
        }
      }
      setState(() {
        seconds = localSeconds;
        minutes = localMinutes;
        hours = localHours;

        digitSeconds = (seconds >= 10) ? "$seconds" : "0$seconds";
        digitMinutes = (minutes >= 10) ? "$minutes" : "0$minutes";
        digitHours = (hours >= 10) ? "$hours" : "0$hours";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(title: Text('Stop Watch'),),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Center(
                    child: Text("$digitHours:$digitMinutes:$digitSeconds",
                      style: TextStyle(color: Colors.black, fontSize: 82.0, fontWeight: FontWeight.w600),),
                  ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,

                 children: [
                   SizedBox(width: 20,),
                   Text('Hours', style: TextStyle(fontSize: 20),),
                   SizedBox(width: 40,),
                   Text('Minutes' ,style: TextStyle(fontSize: 20),),
                   SizedBox(width: 30,),
                   Text('Seconds',  style: TextStyle(fontSize: 20),),
                   SizedBox(width: 5,),
                 ],
                 ),
                  SizedBox(height: 80,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: RawMaterialButton(
                        onPressed: (){
                          (!started) ? start(): stop();
                        },
                            fillColor: (!started)?Color(0xFF607D8B):null,
                            shape: StadiumBorder(
                              side: BorderSide(color: Color(0xFF607D8B))
                            ),
                            child: Text((!started)?'Start': 'Pause', style: TextStyle(color: (!started)?Color(0xFFFFFFFF):Color(0xFF607D8B)),),

                      )),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: RawMaterialButton(
                            onPressed: (){
                              reset();
                            },
                            fillColor: Colors.blueGrey,
                            shape: StadiumBorder(
                                side: BorderSide(color: Colors.blueGrey)
                            ),
                            child: Text('Reset', style: TextStyle(color: Colors.white),),

                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),

    );
  }
}

