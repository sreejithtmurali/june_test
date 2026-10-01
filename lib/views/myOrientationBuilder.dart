import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myorientationbuilder extends StatefulWidget {
  const Myorientationbuilder({super.key});

  @override
  State<Myorientationbuilder> createState() => _MyorientationbuilderState();
}

class _MyorientationbuilderState extends State<Myorientationbuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Center(
              child: Column(
                mainAxisAlignment: .center,
                children: [
                  Text("Login"),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Container(
                      width: MediaQuery.widthOf(context),
                      height: MediaQuery.widthOf(context),
                     decoration: BoxDecoration( color: Colors.blue.shade50,
                     borderRadius: .circular(20)),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Row(
              mainAxisAlignment: .spaceAround,
              children: [
                Text("Login"),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 32.0),
                    child: Container(
                      width: MediaQuery.heightOf(context),
                      height: MediaQuery.heightOf(context),
                      decoration: BoxDecoration( color: Colors.blue.shade50,
                          borderRadius: .circular(20)),
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
