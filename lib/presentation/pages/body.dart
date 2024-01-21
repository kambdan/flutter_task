import 'package:flutter/material.dart';

import '../../util/styles.dart';
import '../widget/card_pending.dart';
import '../widget/card_subject.dart';
import '../widget/container_widget.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _bodyCards(),
    );
  }

  Padding _bodyCards() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hola JCoder',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          RichText(
            text: const TextSpan(
              // Estilo por defecto para todo el texto

              children: <TextSpan>[
                // Texto normal
                TextSpan(
                    text: 'Tú tienes ',
                    style: TextStyle(fontSize: 14, color: Colors.black)),
                // Texto en rojo
                TextSpan(
                  text: '4 tareas pendientes',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                // Resto del texto
                TextSpan(
                    text: ' esta semana',
                    style: TextStyle(fontSize: 14, color: Colors.black)),
              ],
            ),
          ),
          const ContainerHead(),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '4 Tareas pendientes',
                  style: AppStyles.pendienteStyle,
                ),
              ),
              Icon(Icons.warning_amber_rounded, color: Colors.red),
            ],
          ),
          _pendientes(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Materias',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),
          const Column(children: [
            Row(
              children: [
                CardSubject(
                    title: 'Matemáticas',
                    colorOne: Color.fromRGBO(84, 138, 216, 1),
                    colorTwo: Color.fromRGBO(138, 75, 211, 1),
                    textStyle: AppStyles.subjectTitleStyle),
                SizedBox(width: 10),
                CardSubject(
                    title: 'Química',
                    colorOne: Color.fromRGBO(243, 62, 98, 1),
                    colorTwo: Color.fromRGBO(247, 147, 52, 1),
                    textStyle: AppStyles.subjectTitleStyle),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                CardSubject(
                    title: 'Física',
                    colorOne: Color.fromRGBO(137, 62, 156, 1),
                    colorTwo: Color.fromRGBO(248, 43, 115, 1),
                    textStyle: AppStyles.subjectTitleStyle),
                SizedBox(width: 10),
                CardSubject(
                    title: 'Razonamiento',
                    colorOne: Color.fromRGBO(211, 150, 70, 1),
                    colorTwo: Color.fromRGBO(204, 204, 205, 1),
                    textStyle: AppStyles.subjectTitleStyle),
              ],
            ),
          ])
        ],
      ),
    );
  }

  Column _pendientes() {
    return const Column(
      children: [
        Row(
          children: [
            CardPending(
              title: 'Leyes de Newton',
              subject: 'Fisica',
              time: '2:00 PM',
              color: Color.fromRGBO(247, 235, 255, 1),
              textStyle: AppStyles.fisicaStyle,
            ),
            SizedBox(width: 15),
            CardPending(
              title: 'Leyes de Newton',
              subject: 'Química',
              time: '1d:10Hr',
              color: Color.fromRGBO(255, 244, 237, 1),
              textStyle: AppStyles.quimicaStyle,
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          children: [
            CardPending(
              title: 'Leyes de Newton',
              subject: 'Mate',
              time: '1d:10Hr',
              color: Color.fromRGBO(232, 235, 237, 1),
              textStyle: AppStyles.mateStyle,
            ),
            SizedBox(width: 15),
            CardPending(
              title: 'Leyes de Newton',
              subject: 'Fisica',
              time: '2:00 PM',
              color: Color.fromRGBO(247, 235, 255, 1),
              textStyle: AppStyles.fisicaStyle,
            ),
          ],
        )
      ],
    );
  }
}
