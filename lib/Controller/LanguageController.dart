import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class LanguageController {
  static sendvoiceLanguage(String languagevoice) async {
    final FlutterTts _flutterTts = FlutterTts();
    if (languagevoice == 'Thailand') {
      await _flutterTts.setLanguage('th-Th');
      await _flutterTts.speak('สวัสดี ฉันคือไกด์ภาษาไทย');
    }
    if (languagevoice == 'English') {
      await _flutterTts.setLanguage('en-AU');
      await _flutterTts.speak("Hello, I'm English guide. ");
    }
    if (languagevoice == 'Chinese') {
      await _flutterTts.setLanguage('zh');
      await _flutterTts.speak("大家好，我是一名英语导游。 ");
    }
  }

  static sendpicture(String languagepic) {
    List pictureLanguage = [
      Image.asset("assets/english.jpg"),
      Image.asset("assets/Thai.jpg"),
      Image.asset("assets/china.jpg")
    ];
    if (languagepic == 'Thailand') {
      return pictureLanguage[1];
    }
    if (languagepic == 'English') {
      return pictureLanguage[0];
    }
    if (languagepic == 'Chinese') {
      return pictureLanguage[2];
    }
  }
}
