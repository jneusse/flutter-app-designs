import 'package:flutter/material.dart';

import 'package:app_designs/widgets/background.dart';
import 'package:app_designs/widgets/card_table.dart';
import 'package:app_designs/widgets/custom_bottom_navigation.dart';
import 'package:app_designs/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Background(), _HomeBody()],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [PageTitle(), CardTable()],
      ),
    );
  }
}
