import 'package:fitness_training_tracker/layout/training/timer/custom_timer_painter.dart';
import 'package:flutter/material.dart';

class TimerView extends StatefulWidget {
  final Duration duration;

  const TimerView({Key? key, required this.duration}) : super(key: key);

  @override
  _TimerViewState createState() => _TimerViewState();
}

class _TimerViewState extends State<TimerView> with TickerProviderStateMixin {
  AnimationController? controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
  }

  String get timerString {
    Duration duration = controller!.duration! * controller!.value;
    return '${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: AnimatedBuilder(
        animation: controller!,
        builder: (context, child) {
          return Padding(
            padding: EdgeInsets.only(bottom: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.center,
                    child: AspectRatio(
                      aspectRatio: 1.0,
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: AnimatedBuilder(
                                animation: controller!,
                                builder: (BuildContext context, Widget? child) {
                                  return CustomPaint(
                                    painter: CustomTimerPainter(
                                      animation: controller!,
                                      backgroundColor: themeData.primaryColor,
                                      color: themeData.indicatorColor,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Center(
                            child: AnimatedBuilder(
                              animation: controller!,
                              builder: (BuildContext context, Widget? child) {
                                return Text(
                                  timerString,
                                  style: TextStyle(
                                    fontSize:
                                        themeData.textTheme.headline1?.fontSize,
                                    color: themeData.colorScheme.onBackground,
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                AnimatedBuilder(
                  animation: controller!,
                  builder: (context, child) {
                    IconData icon = controller!.isAnimating
                        ? Icons.pause
                        : Icons.play_arrow;
                    String text = controller!.isAnimating ? "Pause" : "Play";
                    return FloatingActionButton.extended(
                      onPressed: () {
                        if (controller!.isAnimating) {
                          controller!.stop();
                          setState(() {});
                        } else {
                          controller!.reverse(
                              from: controller!.value == 0.0
                                  ? 1.0
                                  : controller!.value);
                        }
                      },
                      icon: Icon(icon),
                      label: Text(text),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
