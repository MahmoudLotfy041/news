import 'package:flutter/material.dart';

import '../model/categorymodel_screen.dart';

class Category extends StatelessWidget {
  const Category({Key? key, required this.modele}) : super(key: key);
       final CategoryModel modele;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: NetworkImage(
                  modele.image),
              fit: BoxFit.fill),
        ),
        child: Center(child: Text(modele.text)),
        height: 130,
        width: 180,
      ),
    );
  }
}
