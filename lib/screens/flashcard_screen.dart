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
      question: "Who is the CEO of Google?",
      answer: "Sundar Pichai",
      imageName: "google.png",
    ),
    Flashcard(
      question: "Who founded Microsoft?",
      answer: "Bill Gates and Paul Allen",
      imageName: "microsoft.png",
    ),
    Flashcard(
      question: "What company developed the iPhone?",
      answer: "Apple",
      imageName: "apple.png",
    ),
    Flashcard(
      question: "What does 'CPU' stand for?",
      answer: "Central Processing Unit",
      imageName: "cpu.png",
    ),
    Flashcard(
      question: "Who is the CEO of Tesla?",
      answer: "Elon Musk",
      imageName: "tesla.png",
    ),
    Flashcard(
      question: "What does 'URL' stand for?",
      answer: "Uniform Resource Locator",
      imageName: "url.png",
    ),
    Flashcard(
      question: "What social media platform uses a bird logo (now an 'X')?",
      answer: "X (formerly Twitter)",
      imageName: "x_logo.png",
    ),
    Flashcard(
      question: "Who founded Amazon?",
      answer: "Jeff Bezos",
      imageName: "amazon.png",
    ),
    Flashcard(
      question: "What does 'HTML' stand for?",
      answer: "HyperText Markup Language",
      imageName: "html.png",
    ),
    Flashcard(
      question: "What company is known for its 'ThinkPad' laptops?",
      answer: "Lenovo",
      imageName: "thinkpad.png",
    ),
    Flashcard(
      question: "Who is the CEO of Meta Platforms?",
      answer: "Mark Zuckerberg",
      imageName: "meta.png",
    ),
    Flashcard(
      question: "What does 'GPU' stand for?",
      answer: "Graphics Processing Unit",
      imageName: "gpu.png",
    ),
    Flashcard(
      question: "What are the main programming languages used for Android app development?",
      answer: "Kotlin and Java",
      imageName: "android_dev.png",
    ),
    Flashcard(
      question: "What company created the Windows operating system?",
      answer: "Microsoft",
      imageName: "windows.png",
    ),
    Flashcard(
      question: "What does 'AI' stand for?",
      answer: "Artificial Intelligence",
      imageName: "ai.png",
    ),
    Flashcard(
      question: "Which company developed the search engine Bing?",
      answer: "Microsoft",
      imageName: "bing.png",
    ),
    Flashcard(
      question: "What does 'SSD' stand for in computer storage?",
      answer: "Solid State Drive",
      imageName: "ssd.png",
    ),
    Flashcard(
      question: "Who co-founded Apple Inc. with Steve Jobs?",
      answer: "Steve Wozniak",
      imageName: "steve_wozniak.png",
    ),
    Flashcard(
      question: "What is the name of Google's mobile operating system?",
      answer: "Android",
      imageName: "android_os.png",
    ),
    Flashcard(
      question: "What does 'VPN' stand for?",
      answer: "Virtual Private Network",
      imageName: "vpn.png",
    ),
    Flashcard(
      question: "What is the capital of France?",
      answer: "Paris",
      imageName: "paris.png",
    ),
    Flashcard(
      question: "What is the tallest mountain in the world?",
      answer: "Mount Everest",
      imageName: "mount_everest.png",
    ),
    Flashcard(
      question: "In which country is the Great Pyramid of Giza located?",
      answer: "Egypt",
      imageName: "giza_pyramid.png",
    ),
    Flashcard(
      question: "What is the longest river in the world?",
      answer: "Nile River",
      imageName: "nile_river.png",
    ),
    Flashcard(
      question: "What is the capital of Japan?",
      answer: "Tokyo",
      imageName: "tokyo.png",
    ),
    Flashcard(
      question: "Which continent is Brazil on?",
      answer: "South America",
      imageName: "south_america_continent.png",
    ),
    Flashcard(
      question: "What is the capital of Canada?",
      answer: "Ottawa",
      imageName: "ottawa.png",
    ),
    Flashcard(
      question: "What is the largest ocean on Earth?",
      answer: "Pacific Ocean",
      imageName: "pacific_ocean.png",
    ),
    Flashcard(
      question: "In which city is the Colosseum located?",
      answer: "Rome",
      imageName: "colosseum.png",
    ),
    Flashcard(
      question: "What is the capital of Australia?",
      answer: "Canberra",
      imageName: "canberra.png",
    ),
    Flashcard(
      question: "Which country is known as the Land of the Rising Sun?",
      answer: "Japan",
      imageName: "japan_flag.png",
    ),
    Flashcard(
      question: "What is the capital of Germany?",
      answer: "Berlin",
      imageName: "berlin.png",
    ),
    Flashcard(
      question: "The Great Wall is located in which country?",
      answer: "China",
      imageName: "great_wall_china.png",
    ),
    Flashcard(
      question: "What is the capital of the United Kingdom?",
      answer: "London",
      imageName: "london.png",
    ),
    Flashcard(
      question: "What is the largest hot desert in the world?",
      answer: "Sahara Desert",
      imageName: "sahara_desert.png",
    ),
    Flashcard(
      question: "What is the capital of Russia?",
      answer: "Moscow",
      imageName: "moscow.png",
    ),
    Flashcard(
      question: "Which U.S. state is known as the Sunshine State?",
      answer: "Florida",
      imageName: "florida_state.png",
    ),
    Flashcard(
      question: "Mount Fuji is the highest mountain in which country?",
      answer: "Japan",
      imageName: "mount_fuji.png",
    ),
    Flashcard(
      question: "What is the capital of Spain?",
      answer: "Madrid",
      imageName: "madrid.png",
    ),
    Flashcard(
      question: "Which river flows through Paris?",
      answer: "Seine River",
      imageName: "seine_river.png",
    ),
    Flashcard(
      question: "What is the chemical symbol for water?",
      answer: "H2O",
      imageName: "h2o.png",
    ),
    Flashcard(
      question: "What planet is known as the Red Planet?",
      answer: "Mars",
      imageName: "mars_planet.png",
    ),
    Flashcard(
      question: "What force pulls objects towards the Earth?",
      answer: "Gravity",
      imageName: "gravity_apple.png",
    ),
    Flashcard(
      question: "What is the chemical symbol for Gold?",
      answer: "Au",
      imageName: "gold_symbol.png",
    ),
    Flashcard(
      question: "Who developed the theory of relativity?",
      answer: "Albert Einstein",
      imageName: "albert_einstein.png",
    ),
    Flashcard(
      question: "What is the center of an atom called?",
      answer: "Nucleus",
      imageName: "atom_model.png",
    ),
    Flashcard(
      question: "What gas do plants absorb from the atmosphere for photosynthesis?",
      answer: "Carbon Dioxide (CO2)",
      imageName: "co2_cycle.png",
    ),
    Flashcard(
      question: "What is the hardest natural substance on Earth?",
      answer: "Diamond",
      imageName: "diamond.png",
    ),
    Flashcard(
      question: "How many planets are in our solar system?",
      answer: "Eight",
      imageName: "solar_system.png",
    ),
    Flashcard(
      question: "What is the chemical symbol for Oxygen?",
      answer: "O",
      imageName: "oxygen_symbol.png",
    ),
    Flashcard(
      question: "What is the study of plants called?",
      answer: "Botany",
      imageName: "botany_plant.png",
    ),
    Flashcard(
      question: "What is the approximate speed of light in a vacuum?",
      answer: "299,792 kilometers per second",
      imageName: "speed_of_light.png",
    ),
    Flashcard(
      question: "Who discovered penicillin?",
      answer: "Alexander Fleming",
      imageName: "penicillin_discovery.png",
    ),
    Flashcard(
      question: "What is the human body's largest organ?",
      answer: "Skin",
      imageName: "human_skin.png",
    ),
    Flashcard(
      question: "What is the chemical symbol for Iron?",
      answer: "Fe",
      imageName: "iron_symbol.png",
    ),
    Flashcard(
      question: "What part of the cell contains the genetic material (DNA)?",
      answer: "Nucleus",
      imageName: "cell_nucleus.png",
    ),
    Flashcard(
      question: "What is the common name for sodium chloride?",
      answer: "Salt",
      imageName: "salt_shaker.png",
    ),
    Flashcard(
      question: "Which scientist proposed the three laws of motion?",
      answer: "Isaac Newton",
      imageName: "isaac_newton.png",
    ),
    Flashcard(
      question: "What is the process by which plants make their own food using sunlight?",
      answer: "Photosynthesis",
      imageName: "photosynthesis_process.png",
    ),
    Flashcard(
      question: "What is the Earth's primary source of energy?",
      answer: "The Sun",
      imageName: "sun_energy.png",
    ),
    Flashcard(
      question: "Who was the first President of the United States?",
      answer: "George Washington",
      imageName: "george_washington.png",
    ),
    Flashcard(
      question: "In what year did World War II end?",
      answer: "1945",
      imageName: "wwii_end_date.png",
    ),
    Flashcard(
      question: "Who was a famous queen of ancient Egypt, known for her association with Julius Caesar and Mark Antony?",
      answer: "Cleopatra",
      imageName: "cleopatra.png",
    ),
    Flashcard(
      question: "What ancient civilization built Machu Picchu?",
      answer: "Inca Civilization",
      imageName: "machu_picchu.png",
    ),
    Flashcard(
      question: "Who was the leader of the Soviet Union during World War II?",
      answer: "Joseph Stalin",
      imageName: "joseph_stalin.png",
    ),
    Flashcard(
      question: "In what year did the Titanic sink?",
      answer: "1912",
      imageName: "titanic_sinking.png",
    ),
    Flashcard(
      question: "Who was the first man to walk on the moon?",
      answer: "Neil Armstrong",
      imageName: "neil_armstrong_moon.png",
    ),
    Flashcard(
      question: "What empire was ruled by Julius Caesar?",
      answer: "Roman Republic (later Empire)",
      imageName: "roman_empire_map.png",
    ),
    Flashcard(
      question: "Who painted the Mona Lisa?",
      answer: "Leonardo da Vinci",
      imageName: "mona_lisa_painting.png",
    ),
    Flashcard(
      question: "The Renaissance, a period of great cultural change and artistic development, began in which country?",
      answer: "Italy",
      imageName: "italy_renaissance_art.png",
    ),
    Flashcard(
      question: "Who was the British Prime Minister during most of World War II?",
      answer: "Winston Churchill",
      imageName: "winston_churchill.png",
    ),
    Flashcard(
      question: "What event is widely considered the start of World War I?",
      answer: "Assassination of Archduke Franz Ferdinand",
      imageName: "archduke_ferdinand_assassination.png",
    ),
    Flashcard(
      question: "Who is the primary author of the U.S. Declaration of Independence?",
      answer: "Thomas Jefferson",
      imageName: "thomas_jefferson_writing.png",
    ),
    Flashcard(
      question: "What was the name of the ship that carried the Pilgrims to America in 1620?",
      answer: "Mayflower",
      imageName: "mayflower_ship.png",
    ),
    Flashcard(
      question: "Which Greek philosopher was a teacher to Alexander the Great?",
      answer: "Aristotle",
      imageName: "aristotle_teacher.png",
    ),
    Flashcard(
      question: "Who wrote 'Romeo and Juliet'?",
      answer: "William Shakespeare",
      imageName: "william_shakespeare_portrait.png",
    ),
    Flashcard(
      question: "What musical instrument has keys, pedals, and strings, and is played by striking the keys?",
      answer: "Piano",
      imageName: "piano_instrument.png",
    ),
    Flashcard(
      question: "Who painted 'Starry Night'?",
      answer: "Vincent van Gogh",
      imageName: "starry_night_painting.png",
    ),
    Flashcard(
      question: "Who wrote the 'Harry Potter' series?",
      answer: "J.K. Rowling",
      imageName: "jk_rowling_author.png",
    ),
    Flashcard(
      question: "What is the name of the famous sculpture by Michelangelo depicting a standing male nude?",
      answer: "David",
      imageName: "michelangelo_david_sculpture.png",
    ),
    Flashcard(
      question: "Who wrote 'Pride and Prejudice'?",
      answer: "Jane Austen",
      imageName: "jane_austen_author.png",
    ),
    Flashcard(
      question: "Which artist is known for co-founding the Cubist movement along with Georges Braque?",
      answer: "Pablo Picasso",
      imageName: "pablo_picasso_cubism.png",
    ),
    Flashcard(
      question: "Who composed 'The Four Seasons', a series of violin concertos?",
      answer: "Antonio Vivaldi",
      imageName: "vivaldi_composer.png",
    ),
    Flashcard(
      question: "What epic poem, attributed to Homer, tells the story of the final year of the Trojan War?",
      answer: "The Iliad",
      imageName: "iliad_homer.png",
    ),
    Flashcard(
      question: "Who wrote 'To Kill a Mockingbird'?",
      answer: "Harper Lee",
      imageName: "harper_lee_author.png",
    ),
    Flashcard(
      question: "Which famous ballet, scored by Tchaikovsky, features the Sugar Plum Fairy?",
      answer: "The Nutcracker",
      imageName: "nutcracker_ballet_sugarplum.png",
    ),
    Flashcard(
      question: "Who is the author of 'The Great Gatsby'?",
      answer: "F. Scott Fitzgerald",
      imageName: "f_scott_fitzgerald_author.png",
    ),
    Flashcard(
      question: "In which museum in Paris is the Mona Lisa displayed?",
      answer: "Louvre Museum",
      imageName: "louvre_museum_paris.png",
    ),
    Flashcard(
      question: "Who painted the ceiling of the Sistine Chapel in Vatican City?",
      answer: "Michelangelo",
      imageName: "sistine_chapel_ceiling.png",
    ),
    Flashcard(
      question: "Who wrote the dystopian novel '1984'?",
      answer: "George Orwell",
      imageName: "george_orwell_1984.png",
    ),
    Flashcard(
      question: "How many distinct colors are typically said to be in a rainbow?",
      answer: "Seven",
      imageName: "rainbow_colors.png",
    ),
    Flashcard(
      question: "What is the main ingredient in guacamole?",
      answer: "Avocado",
      imageName: "avocado_guacamole.png",
    ),
    Flashcard(
      question: "Which sport uses a shuttlecock?",
      answer: "Badminton",
      imageName: "badminton_shuttlecock.png",
    ),
    Flashcard(
      question: "What is the currency of Japan?",
      answer: "Yen (¥)",
      imageName: "japanese_yen.png",
    ),
    Flashcard(
      question: "How many sides does a hexagon have?",
      answer: "Six",
      imageName: "hexagon_shape.png",
    ),
    Flashcard(
      question: "What is the name of the toy cowboy in the 'Toy Story' movies?",
      answer: "Woody",
      imageName: "woody_toystory.png",
    ),
    Flashcard(
      question: "Which planet is closest to the Sun?",
      answer: "Mercury",
      imageName: "mercury_planet_solar_system.png",
    ),
    Flashcard(
      question: "What is the common name for the star Polaris, known for its position close to the north celestial pole?",
      answer: "North Star",
      imageName: "north_star_polaris.png",
    ),
    Flashcard(
      question: "What type of animal is a 'doe' most commonly referred to as?",
      answer: "A female deer",
      imageName: "female_deer_doe.png",
    ),
    Flashcard(
      question: "What is the first and last name of the main character in the 'Indiana Jones' film series?",
      answer: "Indiana Jones (Henry Walton Jones Jr.)",
      imageName: "indiana_jones_character.png",
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
    final currentCard = _flashcards[_currentIndex];
    final cardColor = _getRandomColor(); // Generate color once per card

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flashcard Quiz'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Card ${_currentIndex + 1} of ${_flashcards.length}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: _flipCard,
              child: Card(
                color: cardColor, // Use the same color for both sides
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: 300,
                    height: 200,
                    child: Center(
                      child: Text(
                        _isFlipped
                            ? currentCard.answer
                            : currentCard.question,
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            if (currentCard.imageName != null) ...[
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/${currentCard.imageName}',
                height: 200,
                width: 300,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
            ] else ...[
              const SizedBox(height: 20),
              const Icon(
                Icons.help_outline,
                size: 100,
                color: Colors.grey,
              ),
              const SizedBox(height: 20),
            ],
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _currentIndex > 0 ? _previousCard : null,
                  child: const Text('Previous'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _flipCard,
                  child: Text(_isFlipped ? 'Show Question' : 'Show Answer'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _currentIndex < _flashcards.length - 1 ? _nextCard : null,
                  child: const Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
} 