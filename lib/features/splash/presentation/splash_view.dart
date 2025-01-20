import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/core/router/router.dart';

@RoutePage()
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      context.router.replace(const MovieSearchRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
