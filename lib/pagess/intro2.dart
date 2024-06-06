import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp/pages/home_page.dart';
import 'package:groceryapp/pagess/intro3.dart';

class intruu extends StatelessWidget {
  const intruu({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 161, 251, 232),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePage();
                      },
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20, top: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Skip',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black38,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.asset(
                  'lib/images/brum.png',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text(
                  'Travel Agent',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.amethysta(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 2),
              Text(
                'Hey you, looking for a room? We\'ve helped millions \nacross the nation find their perfect match... and you\'re next!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 40),
              Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return HomePage();
                          },
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(
                          top: 16,
                          bottom: 16,
                          left: 52,
                          right: 52,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color.fromARGB(255, 161, 251, 232),
                          border: Border.all(
                            width: 2.0,
                            color: Colors.black54,
                          ),
                        ),
                        child: const Text(
                          "Skip",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return akhiran();
                          },
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(
                          top: 16,
                          bottom: 16,
                          left: 52,
                          right: 52,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.black,
                        ),
                        child: const Text(
                          "Next",
                          style: TextStyle(
                            color: Color.fromARGB(221, 255, 255, 255),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
