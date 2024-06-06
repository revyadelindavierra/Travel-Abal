import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp/pages/home_page.dart';
import 'package:groceryapp/pages/regist.dart';

class loginn extends StatelessWidget {
  const loginn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 155, 193, 234),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/images/bluebg.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    right: -80,
                    width: 240,
                    height: 650,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('lib/images/cloudy.png'),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    width: 80,
                    height: 550,
                    child: Transform.rotate(
                      angle: 75,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('lib/images/camera.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 42,
                    width: 97,
                    height: 310,
                    child: Transform.rotate(
                      angle: 75,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('lib/images/plane.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 40,
                    width: 80,
                    height: 300,
                    child: Transform.rotate(
                      angle: -0.75,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('lib/images/koper.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      height: 285,
                      margin: EdgeInsets.only(top: 52),
                      child: Center(
                        child: Text(
                          "loginn",
                          style: GoogleFonts.notoSerif(
                            fontSize: 56,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                children: <Widget>[],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
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
                  top: 12,
                  bottom: 12,
                  left: 62,
                  right: 62,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.black,
                ),
                child: const Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Regist()));
              },
              child: Text(
                'Don\'t have an account? Join now',
                style: TextStyle(
                  color: const Color.fromARGB(255, 248, 248, 248),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
