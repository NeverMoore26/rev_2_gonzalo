import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rev_v2/routes/app_route.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: [
                _buildGridCard(
                  context: context,
                  icon: Icons.login,
                  text: 'Login',
                  route: AppRoutes.loginPage,
                  color: Colors.blue,
                ),
                _buildGridCard(
                  context: context,
                  icon: Icons.app_registration,
                  text: 'Register',
                  route: AppRoutes.registerPage,
                  color: Colors.green,
                ),
                _buildGridCard(
                  context: context,
                  icon: Icons.info_outline,
                  text: 'Info',
                  route: AppRoutes.infoPage,
                  color: Colors.orange,
                ),
                _buildGridCard(
                  context: context,
                  icon: Icons.people_outline,
                  text: 'About',
                  route: AppRoutes.aboutPage,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGridCard({
    required BuildContext context,
    required IconData icon,
    required String text,
    required String route,
    required Color color,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: InkWell(
        onTap: () => context.push(route),
        borderRadius: BorderRadius.circular(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 80, color: color),
            const SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
