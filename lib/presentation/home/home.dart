import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scaler_assignments/data/dummy/home_screen_items.dart';
import 'package:scaler_assignments/data/models/home/home_item.dart';
import 'package:scaler_assignments/presentation/resources/routes_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final List<HomeItem> homeItemList = getListOfHomeItems();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = size.height * 0.1;
    final double itemWidth = size.width / 2;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.center,
            color: const Color(0xFFf6f8fa),
            child: GridView.count(
              crossAxisCount: 1,
              childAspectRatio: (itemWidth / itemHeight),
              children: homeItemList.map((element) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridTile(
                    child: GestureDetector(
                      onTap: () {
                        context.goNamed(RouteNames.ticTacToeCreateGame);
                      },
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(element.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                        height: 100,
                        width: 100,
                        child: Container(
                          color: Colors.white,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              element.title,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
