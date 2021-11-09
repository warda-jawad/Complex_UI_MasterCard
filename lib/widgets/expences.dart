import 'package:complexui/configration.dart';
import 'package:complexui/widgets/pie_chart.dart';
import 'package:flutter/material.dart';

class ExpencesSection extends StatelessWidget {
  const ExpencesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Expenses",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Row(
          children: [
            Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: category
                        .map((e) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor:
                                        pieColors[category.indexOf(e)],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    e['name'],
                                    style: TextStyle(fontSize: 18),
                                  )
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                )),
            Expanded(flex: 5, child: PieChart()),
          ],
        ),
      ],
    );
  }
}
