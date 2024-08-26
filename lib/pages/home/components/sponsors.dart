import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

final List<String> sponsorsLogo = [
  "assets/brand1.png",
  "assets/brand2.png",
  "assets/brand3.png",
  "assets/brand4.png",
  "assets/brand5.png",
];

class Sponsors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50.0),
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }
}

Widget _buildUi(double width) {
  return Center(
    child: ResponsiveScaledBox(
      width: width,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Wrap(
            runSpacing: 50.0,
            spacing: 50.0,
            children: sponsorsLogo
                .map(
                  (logo) => Container(
                    height: 20.0,
                    child: Image.asset(logo),
                    constraints: BoxConstraints(
                      maxWidth: constraints.maxWidth /
                              (ResponsiveBreakpoints.of(context).isMobile
                                  ? 3.0
                                  : 5.0) -
                          50.0,
                    ),
                  ),
                )
                .toList(),
          );
        },
      ),
    ),
  );
}
