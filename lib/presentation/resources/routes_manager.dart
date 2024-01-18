import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scaler_assignments/presentation/home/home.dart';
import 'package:scaler_assignments/presentation/tic_tac_toe/create_game/create_game.dart';

class RouteNames {
  static String home = '/';
  static String ticTacToe = '/ticTacToe';
  static String ticTacToeCreateGame = '$ticTacToe/createGame';
}

class RouteManager {
  static final GoRouter _router = GoRouter(
    initialLocation: RouteNames.home,
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      GoRoute(
        path: RouteNames.home,
        name: RouteNames.home,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        name: RouteNames.ticTacToeCreateGame,
        path: RouteNames.ticTacToeCreateGame,
        builder: (BuildContext context, GoRouterState state) {
          return const CreateGame();
        },
      ),
    ],
    redirect: (context, state) {
      return null;
    },
  );

  GoRouter get router => _router;
}

final GoRouter routesManger = RouteManager().router;
