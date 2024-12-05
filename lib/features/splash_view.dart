import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/routes/routes.dart';

class SplashView extends StatelessWidget {
  const SplashView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5),(){
      // ignore: use_build_context_synchronously
      context.go(Routes.onboarding);

    });
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Group.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Logo.png',
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Neuro Guard',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
