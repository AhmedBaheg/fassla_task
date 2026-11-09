import 'package:fassla_task/core/shared_widgets/app_main_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/app_strings.dart';


class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppMainBar(
        title: "Explore",
      ),

    );
  }
}

