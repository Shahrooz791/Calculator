import 'package:flutter/material.dart';

class Container2 extends StatelessWidget {
  final String titles;
  final VoidCallback onpres;
  const Container2({super.key, required this.titles, required this.onpres});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpres,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: Text(titles)),
        ),
      ),
    );
  }
}
