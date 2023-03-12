import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WishListFragment extends StatelessWidget {
  const WishListFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "WishList Fragment",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
    );
  }
}
