import 'package:flutter/material.dart';
import 'package:icall/screens/login_screen.dart';
import 'package:icall/util/colors.dart';
// import 'package:speech_to_text/speech_to_text.dart' as stt;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'I-Call',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      routes: {
        '/Login': (context) => const LoginPage(),
      },
      home: const LoginPage(),
    );
  }
}

// class SpeechScreen extends StatefulWidget {
//   const SpeechScreen({super.key});

//   @override
//   State<SpeechScreen> createState() => _SpeechScreenState();
// }

// class _SpeechScreenState extends State<SpeechScreen> {
//   late stt.SpeechToText _speech;
//   bool _isListening = false;
//   String _text = "Tap the mike to start";
//   double _confidence = 1;

//   @override
//   void initState() {
//     _speech = stt.SpeechToText();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Confidence lv : ${_confidence * 100} %'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _listen,
//         child: Icon(_isListening ? Icons.mic_outlined : Icons.mic_off_outlined),
//       ),
//       body: SingleChildScrollView(
//         reverse: true,
//         child: Center(
//           child: Text(_text),
//         ),
//       ),
//     );
//   }

//   void _listen() async {
//     if (!_isListening) {
//       bool available = await _speech.initialize(
//         onStatus: (val) => print('onStatus: $val'),
//         onError: (val) => print('onError: $val'),
//       );
//       if (available) {
//         setState(() => _isListening = true);
//         _speech.listen(
//           onResult: (val) => setState(
//             () {
//               _text = val.recognizedWords;
//               if (val.hasConfidenceRating && val.confidence > 0) {
//                 _confidence = val.confidence;
//               }
//             },
//           ),
//         );
//       } else {
//         setState(() => _isListening = false);
//         _speech.stop();
//       }
//     }
//   }
// }
