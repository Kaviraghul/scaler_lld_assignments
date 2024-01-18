import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scaler_assignments/presentation/resources/routes_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.center,
            color: const Color(0xFFf6f8fa),
            child: GridTile(
              child: GestureDetector(
                onTap: () {
                  context.goNamed(RouteNames.ticTacToeCreateGame);
                },
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/tic_tac_toe.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 100,
                  width: 100,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
