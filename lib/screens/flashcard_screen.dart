import 'package:flutter/material.dart';
import '../models/flashcard.dart';

class FlashcardScreen extends StatefulWidget {
  const FlashcardScreen({super.key});

  @override
  State<FlashcardScreen> createState() => _FlashcardScreenState();
}

class _FlashcardScreenState extends State<FlashcardScreen> {
  // Hard-coded list of flashcards
  final List<Flashcard> _flashcards = [
    Flashcard(question: "What is the capital of Japan?", answer: "Tokyo"),
    Flashcard(question: "What language is Flutter written in?", answer: "Dart"),
    Flashcard(question: "What is `2 + 2`?", answer: "4"),
    Flashcard(question: "Who is the CEO of Google?", answer: "Sundar Pichai"),
  ];

  int _currentIndex = 0;
  bool _isFlipped = false;

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
                child: Center(
                  child: Text(
                    _isFlipped 
                        ? _flashcards[_currentIndex].answer 
                        : _flashcards[_currentIndex].question,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 22),
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
                  onPressed: _previousCard,
                  child: const Text('Previous'),
                ),
                ElevatedButton(
                  onPressed: _flipCard,
                  child: const Text('Flip Card'),
                ),
                ElevatedButton(
                  onPressed: _nextCard,
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