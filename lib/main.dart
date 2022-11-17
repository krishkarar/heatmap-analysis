import 'package:flutter/material.dart';
import 'package:heat/heatmap_temp.dart';
import 'package:heat/heatmap_C02.dart';
import 'package:heat/rounded_button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Heatmap Demo',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/heatmap_example': (context) =>  HeatMapExample(),
        '/heatmap_temp': (context) => TemperatureHeatmap(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Physiz heatmap analysis'),
      backgroundColor: Colors.redAccent,),
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                  child: Hero(
                    tag: 'logo',
                    child: Container(
                      child: Image.asset('images/logo.PNG'),
                      height: 80.0,
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                Center(
                  child: AnimatedTextKit(animatedTexts: [
                    TypewriterAnimatedText(
                      'Physiz Analyse',
                      textStyle: const TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.black
                      ),
                      speed: const Duration(milliseconds: 500),


                    ),

                  ],

                  ),
                ),
                SizedBox(
                  height: 48.0,
                ),

                RoundedButton(

                  buttonTitle: 'Tempearture Heatmap',
                  onClick: () async{
                    Navigator.pushNamed(context, '/heatmap_temp');
                    // await Firebase.initializeApp();

                  },
                ),

                SizedBox(
                  height: 35.0,
                ),
                RoundedButton(
                  buttonTitle: 'CO2 Heatmap',
                  onClick: (){
                    Navigator.pushNamed(context, '/heatmap_example');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Navigator.pushNamed(context, '/heatmap_calendar')
// Navigator.pushNamed(context, '/heatmap_example')