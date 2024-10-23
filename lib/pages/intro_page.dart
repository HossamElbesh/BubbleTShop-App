import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child:
                  Image.asset('lib/images/milk_tea.png',
                    height: 240,),
                ),

                const SizedBox(height: 48,),

                const Text(
                  'Bubble Tea Shop',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),

                const SizedBox(height: 25,),

                const Text(
                  'Freshly Brewed Bubble Tea & Custom Flavors Made With Premium Ingredients',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.brown,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 48,),

                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    padding: const EdgeInsets.all(25),
                    child: Center(
                      child: const Text("Shop Now",
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 19),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
