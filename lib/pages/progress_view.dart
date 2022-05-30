import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mvp_all/widgets/customs-widgets/progress_custom.dart';

class ProgressView extends StatefulWidget {
  const ProgressView({Key? key}) : super(key: key);

  @override
  State<ProgressView> createState() => _ProgressViewState();
}

late Timer _timer;
double _valueProgress = 0;
  
class _ProgressViewState extends State<ProgressView> {

  @override
  void initState() {
    timer();
    super.initState();
  }

  void timer(){
    const oneSec =  Duration(milliseconds: 50);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_valueProgress == 100) {
          setState(() {
            // _timer.cancel();
          _valueProgress = 0;
          });
        } else {
          setState(() {
            _valueProgress++;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // timer();
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 150,
          height: 150,
          child: CustomPaint(
            painter: ProgressCustom(_valueProgress),
          ),
        ),
      ),
    );
  }
}