import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class TemperatureHeatmap extends StatelessWidget {
  // const HeatmapCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(animatedTexts: [
              TypewriterAnimatedText(
                'Temperature Analysis',
                textStyle: const TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.white
                ),
                speed: const Duration(milliseconds: 500),


              ),

            ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Center(
              child: SafeArea(
                child: HeatMapCalendar(
                  defaultColor: Colors.white,
                  flexible: true,
                  colorMode: ColorMode.color,
                  textColor: Colors.black,
                  monthFontSize: 20.0,
                  weekFontSize: 15.0,
                  margin: EdgeInsets.all(5.0),
                  borderRadius: 25.0,
                  datasets: {
                    DateTime(2022, 11, 1): 4,
                    DateTime(2022, 11, 2): 5,
                    DateTime(2022, 11, 3): 7,
                    DateTime(2022, 11, 4): 8,
                    DateTime(2022, 11, 5): 10,
                    DateTime(2022, 11, 6): 13,
                    DateTime(2022, 11, 7): 16,
                    DateTime(2022, 11, 8): 18,
                    DateTime(2022, 11, 9): 19,
                    DateTime(2022, 11, 10): 20,
                    DateTime(2022, 11, 11): 21,
                    DateTime(2022, 11, 12): 22,
                    DateTime(2022, 11, 13): 22,
                    DateTime(2022, 11, 14): 24,
                    DateTime(2022, 11, 15): 25,
                    DateTime(2022, 11, 16): 25,
                    DateTime(2022, 11, 17): 26,
                    DateTime(2022, 11, 18): 27,
                    DateTime(2022, 11, 19): 29,
                    DateTime(2022, 11, 20): 29,
                    DateTime(2022, 11, 21): 30,
                    DateTime(2022, 11, 22): 32,
                    DateTime(2022, 11, 23): 32,
                    DateTime(2022, 11, 24): 33,
                    DateTime(2022, 11, 25): 33,
                    DateTime(2022, 11, 26): 34,
                    DateTime(2022, 11, 27): 35,
                    DateTime(2022, 11, 28): 36,
                    DateTime(2022, 11, 29): 37,
                    DateTime(2022, 11, 30): 37,
                  },
                  colorsets: const {
                    4:  Color(0xffA0E7FE),
                    8:  Color(0xffA0E6FE),
                    12: Color(0xff00CDFF),
                    16: Color(0xffF4E06D),
                    20: Color(0xffFFCB01),
                    24: Color(0xffFE9935),
                    28: Color(0xfff25202),
                    32: Color(0xffFF3301),
                    36: Color(0xffC20B09)

                  },

                  onClick: (value) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.toString())));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}