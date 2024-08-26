import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/models/stat.dart';
import 'package:web_portfolio/utils/constants.dart';

final List<Stat> stats = [
  Stat(count: "43", text: "Clients"),
  Stat(count: "68+", text: "Projects"),
  Stat(count: "17", text: "Awards"),
  Stat(count: "10", text: "Years\nExperience"),
];

class PortfolioStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // Determine the item width based on screen width
        double itemWidth = constraints.maxWidth < 600
            ? constraints.maxWidth / 2 - 20
            : constraints.maxWidth / 4 - 20;

        return Container(
          alignment: Alignment.center,
          child: Wrap(
            spacing: 20.0,
            runSpacing: 20.0,
            children: stats.map((stat) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                width: itemWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      stat.count!,
                      style: GoogleFonts.oswald(
                        fontWeight: FontWeight.w700,
                        fontSize: 32.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      stat.text!,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: kCaptionColor,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
