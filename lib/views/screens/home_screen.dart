import 'package:flutter/material.dart';
import 'package:lesson_46_homework/views/screens/categories_screen.dart';
import 'package:lesson_46_homework/views/screens/products_screen.dart';
import 'package:lesson_46_homework/views/screens/users_screen.dart';

class HomeSCreen extends StatelessWidget {
  const HomeSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home screen"),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeSCreen(),
                    ));
              },
              child: Text("Home page"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductsScreen(),
                    ));
              },
              child: Text("Products"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoriesScreen(),
                    ));
              },
              child: Text("Categories"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UsersScreen(),
                    ));
              },
              child: Text("Users"),
            ),
          ],
        ),
      ),
    );
  }
}
