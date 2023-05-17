import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:voice_recognition_test/colors.dart';
import 'package:voice_recognition_test/helpers/convert.dart';
import 'package:voice_recognition_test/helpers/search.dart';
import 'package:voice_recognition_test/models/shabad.dart';

class SpeechScreen extends StatefulWidget {
  const SpeechScreen({super.key});

  @override
  State<SpeechScreen> createState() => _SpeechScreenState();
}

class _SpeechScreenState extends State<SpeechScreen> {
  final SpeechToText _speechToText = SpeechToText();
  String text = "Hold the button and start speaking";
  bool _speechEnabled = false;
  bool _isListening = false;
  var unicode = 'Your Unicode characters will show here.';
  var firstLetters = 'Your first letters will show here.';

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  /// This has to happen only once per app
  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {});
  }

  /// Each time to start a speech recognition session
  void _startListening() async {
    await _speechToText.listen(onResult: _onSpeechResult, localeId: 'pa-IN');
    setState(() {
      _isListening = true;
    });
  }

  void _stopListening() async {
    await _speechToText.stop();
    setState(() {
      _isListening = false;
    });
  }

  /// This is the callback that the SpeechToText plugin calls when
  /// the platform returns recognized words.
  void _onSpeechResult(SpeechRecognitionResult result) {
    if (_speechToText.isNotListening) {
      setState(() {
        _isListening = false;
      });
      getConvertedText(text);
    }
    setState(() {
      text = result.recognizedWords;
      // _isListening = false;
    });
  }

  List<Shabad> _shabads = [];
  bool anyError = false;
  bool _isSearching = false;

  void getConvertedText(String text) async {
    setState(() {
      _isSearching = true;
    });
    unicode = Convert.unicode(text: text, reverse: true);
    firstLetters = Convert.firstLetters(words: unicode);
    final List<Shabad>? loadedShabads = await Search.voiceSearch(firstLetters);

    setState(() {
      if (loadedShabads != null) {
        _shabads = loadedShabads;
        _isSearching = false;
        anyError = false;
      } else {
        _isSearching = false;
        anyError = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        endRadius: 75,
        animate: _isListening,
        duration: const Duration(milliseconds: 2000),
        glowColor: bgColor,
        repeat: true,
        repeatPauseDuration: const Duration(milliseconds: 100),
        showTwoGlows: true,
        child: GestureDetector(
          onTap:
              _speechToText.isNotListening ? _startListening : _stopListening,
          child: CircleAvatar(
            backgroundColor: bgColor,
            radius: 35,
            child: Icon(
              _isListening ? Icons.mic_off : Icons.mic,
              color: Colors.white,
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: bgColor,
        title: const Text(
          'Speech Recognition',
          style: TextStyle(fontWeight: FontWeight.w600, color: textColor),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        margin: const EdgeInsets.only(bottom: 150),
        child: Column(
          children: [
            Text(
              'your voice: $text',
              style: const TextStyle(
                fontSize: 24,
                color: Colors.black54,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            anyError
                ? const Text(
                    'Try again, couldn\'t catch you. Minimum three words.')
                : _isSearching? const Center(
                  child: CircularProgressIndicator(),
                ) : Expanded(
                    child: ListView.builder(
                        itemCount: _shabads.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Text('${index + 1}'),
                            title: Text(_shabads[index].verse),
                          );
                        }),
                  ),
          ],
        ),
      ),
    );
  }
}
