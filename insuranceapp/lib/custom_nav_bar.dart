import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar();

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  Widget columnForNavBar(IconData icon, String iconText) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 40,
        ),
        Text(
          iconText,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: 80,
      width: double.infinity,
      color: Colors.red,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 8,
              bottom: 8,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      'Insurance App',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: columnForNavBar(
                    Icons.view_compact_rounded,
                    'View',
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: columnForNavBar(
                    Icons.add,
                    'Add',
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: columnForNavBar(
                    Icons.delete,
                    'Delete',
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text('Hello, Kiran Maharana'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
