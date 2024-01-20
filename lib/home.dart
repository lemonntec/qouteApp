// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class QuoteApp extends StatefulWidget {
  const QuoteApp({super.key});

  @override
  State<QuoteApp> createState() => _QuoteAppState();
}

class _QuoteAppState extends State<QuoteApp> {
  List quotes = [
    "The only way to do great work is to love what you do. - Steve Jobs ",
    "In the middle of every difficulty lies opportunity. - Albert Einstein",
    "Success is not final, failure is not fatal: It is the courage to continue that counts. - Winston Churchill",
    "The best revenge is massive success. - Frank Sinatra",
    "Believe you can and you're halfway there. - Theodore Roosevelt",
    "Happiness is not something ready-made. It comes from your own actions. - Dalai Lama",
    "It does not matter how slowly you go as long as you do not stop. - Confucius",
    "The greatest glory in living lies not in never falling, but in rising every time we fall. - Nelson Mandela",
    "The future belongs to those who believe in the beauty of their dreams. - Eleanor Roosevelt",
    "Don't watch the clock; do what it does. Keep going. - Sam Levenson",
    "Success is not the key to happiness. Happiness is the key to success. - Albert Schweitzer",
    "It always seems impossible until it's done. - Nelson Mandela",
    "The harder I work, the luckier I get. - Samuel Goldwyn",
    "The best way to predict the future is to create it. - Peter Drucker",
    "Failure is the condiment that gives success its flavor. - Truman Capote",
    "Change your thoughts and you change your world. - Norman Vincent Peale",
    "Success is not in what you have, but who you are. - Bo Bennett",
    "The only limit to our realization of tomorrow will be our doubts of today. - Franklin D. Roosevelt",
    "The secret of getting ahead is getting started. - Mark Twain",
    "Dream big and dare to fail. - Norman Vaughan",
    "The best time to plant a tree was 20 years ago. The second best time is now. - Chinese Proverb",
    "Your time is limited, don't waste it living someone else's life. - Steve Jobs",
    "Success usually comes to those who are busy looking for it. - Henry David Thoreau",
    "I find that the harder I work, the more luck I seem to have. - Thomas Jefferson",
    "When you reach the end of your rope, tie a knot in it and hang on. - Franklin D. Roosevelt",
    "The only person you are destined to become is the person you decide to be. - Ralph Waldo Emerson",
    "The true measure of a man is how he treats someone who can do him absolutely no good. - Samuel Johnson",
    "You miss 100% of the shots you don't take. - Wayne Gretzky",
    "The only limit to our realization of tomorrow will be our doubts of today. - Franklin D. Roosevelt",
    "Optimism is the faith that leads to achievement. - Helen Keller",
    "Don't be afraid to give up the good to go for the great. - John D. Rockefeller",
    "The biggest risk is not taking any risk. In a world that is changing quickly, the only strategy that is guaranteed to fail is not taking risks. - Mark Zuckerberg",
    "Your work is going to fill a large part of your life, and the only way to be truly satisfied is to do what you believe is great work. - Steve Jobs",
    "You must be the change you wish to see in the world. - Mahatma Gandhi",
    "The mind is everything. What you think, you become. - Buddha",
    "Success is stumbling from failure to failure with no loss of enthusiasm. - Winston Churchill",
    "It is during our darkest moments that we must focus to see the light. - Aristotle Onassis",
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Quotes',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Expanded(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    width: 400,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Text(
                        '${quotes[index % quotes.length]}',
                        style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                height: 5,
                thickness: 2,
              ),
              ElevatedButton(
                  onPressed: () => _quoteItems(),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.deepOrange),
                    iconColor: MaterialStatePropertyAll(Colors.amber),
                  ),
                  child: SizedBox(
                    width: 100,
                    child: Center(
                      child: Row(
                        children: [
                          Icon(Icons.sunny),
                          Text('inspire me'),
                        ],
                      ),
                    ),
                  )),
              Spacer(
                flex: 15,
              )
            ],
          ),
        ),
      ),
    );
  }

  void _quoteItems() {
    setState(() {
      index++;
    });
  }
}
