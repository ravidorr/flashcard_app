import 'package:flutter/material.dart';
import '../models/flashcard.dart';
import 'dart:math';

class FlashcardScreen extends StatefulWidget {
  const FlashcardScreen({super.key});

  @override
  State<FlashcardScreen> createState() => _FlashcardScreenState();
}

class _FlashcardScreenState extends State<FlashcardScreen> {
  // Hard-coded list of flashcards
  final List<Flashcard> _flashcards = [
    Flashcard(
      question: "What is the capital of Japan?",
      answer: "Tokyo",
      imageName: "japan.png",
    ),
    Flashcard(
      question: "What language is Flutter written in?",
      answer: "Dart",
      imageName: "flutter.png",
    ),
    Flashcard(
      question: "What is `2 + 2`?",
      answer: "4",
      imageName: "math.png",
    ),
    Flashcard(
      question: "Who is the CEO of Google?",
      answer: "Sundar Pichai",
      imageName: "google.png",
    ),
  ];

  int _currentIndex = 0;
  bool _isFlipped = false;
  final Random _random = Random();

  Color _getRandomColor() {
    return Color.fromRGBO(
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
      1.0,
    );
  }

  void _flipCard() {
    setState(() {
      _isFlipped = !_isFlipped;
    });
  }

  void _nextCard() {
    setState(() {
      if (_currentIndex < _flashcards.length - 1) {
        _currentIndex++;
      }
      _isFlipped = false;
    });
  }

  void _previousCard() {
    setState(() {
      if (_currentIndex > 0) {
        _currentIndex--;
      }
      _isFlipped = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flashcards'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // The Card display area
            SizedBox(
              width: 300,
              height: 200,
              child: Card(
                elevation: 4,
                color: _getRandomColor(),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (_flashcards[_currentIndex].imageName != null)
                          Image.asset(
                            'assets/images/${_flashcards[_currentIndex].imageName!}',
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                        Text(
                          _isFlipped
                              ? _flashcards[_currentIndex].answer
                              : _flashcards[_currentIndex].question,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 22),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Navigation buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: _currentIndex > 0 ? _previousCard : null,
                  child: const Text('Previous'),
                ),
                ElevatedButton(
                  onPressed: _flipCard,
                  child: const Text('Flip Card'),
                ),
                ElevatedButton(
                  onPressed: _currentIndex < _flashcards.length - 1 ? _nextCard : null,
                  child: const Text('Next'),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Card counter
            Text('Card ${_currentIndex + 1}/${_flashcards.length}'),
          ],
        ),
      ),
    );
  }
} 