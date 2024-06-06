import 'package:flutter/material.dart';

class logg extends StatelessWidget {
  const logg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 159, 234, 155),
      body: Column(
        children: <Widget>[
          Container(
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/images/back.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 40,
                  width: 80,
                  height: 400,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/images/avocado.png'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 40,
                  width: 80,
                  height: 200,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/images/avocado.png'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 285,
                    margin: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Text(
                        "logg",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 40,
                            fontWeight: FontWeight.w900),
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
            padding: const EdgeInsets.only(left: 20, right: 25),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 25),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('logg'),
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.green)),
          ),
        ],
      ),
    );
  }
}
