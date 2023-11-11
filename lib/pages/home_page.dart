import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    GoRouter.of(context).go('/profile');
                  },
                  icon: const Icon(Icons.person),
                  iconSize: 100,
                ),
                const Text(
                  'Profile',
                  style: TextStyle(fontSize: 20, fontFamily: "Inter"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    GoRouter.of(context).go('/interests');
                  },
                  icon: const Icon(Icons.star),
                  iconSize: 100,
                ),
                const Text(
                  'Interests',
                  style: TextStyle(fontSize: 20, fontFamily: "Inter"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    GoRouter.of(context).go('/skills');
                  },
                  icon: const Icon(Icons.build),
                  iconSize: 100,
                ),
                const Text(
                  'Skills',
                  style: TextStyle(fontSize: 20, fontFamily: "Inter"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
