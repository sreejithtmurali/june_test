import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mylayoutbuilder extends StatefulWidget {
  const Mylayoutbuilder({super.key});

  @override
  State<Mylayoutbuilder> createState() => _MylayoutbuilderState();
}

class _MylayoutbuilderState extends State<Mylayoutbuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 420) {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(color: Colors.red);
              },
            );
          }
          if (constraints.maxWidth < 800) {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(color: Colors.red);
              },
            );
          }
          if (constraints.maxWidth < 1200) {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(color: Colors.red);
              },
            );
          } else {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 8,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(color: Colors.red);
              },
            );
          }
        },
      ),
    );
  }
}
