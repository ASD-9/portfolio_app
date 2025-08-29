import 'package:flutter/material.dart';
import 'package:portfolio_app/data/app_data.dart';
import 'package:portfolio_app/home_page.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AppStartup extends StatefulWidget {
  const AppStartup({super.key});

  @override
  State<AppStartup> createState() => _AppStartupState();
}

class _AppStartupState extends State<AppStartup> {
  late Future<void> _initFuture;

  @override
  void initState() {
    super.initState();
    _initFuture = AppData.instance.init();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Center(
              child: LoadingAnimationWidget.bouncingBall(
                color: Theme.of(context).colorScheme.primary,
                size: 75
              )
            ),
          );
        } else if (snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  Text(snapshot.error.toString()),
                  ElevatedButton(
                    child: const Text("Recharger"),
                    onPressed: () {
                      setState(() {
                        _initFuture = AppData.instance.init();
                      });
                    },
                  )
                ],
              ),
            ),
          );
        } else {
          return const MyHomePage();
        }
      }
    );
  }
}
