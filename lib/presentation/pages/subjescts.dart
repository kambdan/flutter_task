import 'package:flutter/material.dart';

class Subject extends StatefulWidget {
  const Subject({super.key});

  @override
  State<Subject> createState() => _SubjectState();
}

class _SubjectState extends State<Subject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(81, 49, 116, 1),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Matemáticas
          Positioned(
            left: 0,
            top: 50,
            child: subjectContainer(
              context,
              'Matemáticas',
              'assets/fondoOne.png',
              Colors.blue,
              Colors.blueAccent,
              330,
              150,
            ),
          ),
          // Física
          Positioned(
            left: 0,
            top: 180,
            child: subjectContainer(
              context,
              'Física',
              'assets/fondoTwo.png',
              Colors.purple,
              Colors.redAccent,
              310,
              150,
            ),
          ),
          // Química
          Positioned(
            left: 0,
            top: 300,
            child: subjectContainer(
              context,
              'Química',
              'assets/fondoThree.png',
              Colors.orange,
              Colors.deepOrangeAccent,
              290,
              150,
            ),
          ),
          // Razonamiento
          Positioned(
            left: 0,
            top: 430,
            child: subjectContainer(
              context,
              'Razonamiento',
              'assets/fondoFour.png',
              Colors.yellow,
              Colors.amber,
              270,
              150,
            ),
          ),
        ],
      ),
    );
  }

  Widget subjectContainer(
      BuildContext context,
      String subject,
      String imagePath,
      Color color1,
      Color color2,
      double width,
      double height) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              backgroundColor: Colors.transparent,
              insetPadding: const EdgeInsets.all(10),
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [color1, color2],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Center(
                  child: Text(
                    subject,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Text(
            subject,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
