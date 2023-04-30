import 'package:flutter/material.dart';

//this is the navigation page skeleton
//need to create destination pages, so far dummy pages are added

class newsCard extends StatelessWidget {
  final String title;
  final String imagePath;

  newsCard({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        color: Colors.white,
        elevation: 4.0,
        margin: EdgeInsets.all(16.0),
        child: Column(children: [
          Image.asset(
            imagePath,
            fit: BoxFit.fitWidth,
          ),
          Container(
            color: Colors.grey[200],
            child: ListTile(
                leading: Text(title.toString(),
                    style: TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.bold))),
          ),
        ]));
  }
}
