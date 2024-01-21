import 'package:flutter/material.dart';

import '../../util/styles.dart';

class ContainerHead extends StatelessWidget {
  const ContainerHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 10, bottom: 12),
      child: Container(
        width: MediaQuery.of(context).size.width * 2,
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(children: [
          const Flexible(
            child: Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('300 ', style: AppStyles.titleStyle),
                      Text(
                        'puntos',
                        style: AppStyles.subtitleStyle,
                      )
                    ],
                  ),
                  Text(
                    'Obten 500 para obtener una clase personalizada',
                    style: AppStyles.detailStyle,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.25,
              height: MediaQuery.of(context).size.height * 0.03,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'Aplicar',
                  style: AppStyles.pruebaStyle,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
