
import 'package:flutter/material.dart';

import 'package:todo/features/home/views/widgets/floating_button.dart';
import 'package:todo/features/home/views/widgets/home_app_bar.dart';

import '../../logout/widgets/logout_bloc_listener.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButton(),
      appBar: HomeAppBar(),
      body: Column(
        children: [
          LogoutBlocListener(),
        ]

      ),
    );
  }
}
