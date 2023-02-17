import 'package:flutter/material.dart';
import 'package:meal_app/screens/fileters_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget buildListTile(String title, IconData icon, VoidCallback tapHandler) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        child: Column(
          children: [
            Container(
              color: Theme.of(context).primaryColor,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              height: 150,
              child: const Text(
                'Cooking up',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            buildListTile('Meals', Icons.restaurant, () {
              Navigator.of(context).pushReplacementNamed('/');
            }),
            const Divider(color: Colors.grey),
            buildListTile('Filters', Icons.filter, () {
              Navigator.of(context)
                  .pushReplacementNamed(FilterScreen.routeName);
            }),
          ],
        ));
  }
}
