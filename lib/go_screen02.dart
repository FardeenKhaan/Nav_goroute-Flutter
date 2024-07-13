import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasks_week03/go_screen01.dart';

class GoScreen02 extends StatefulWidget {
  GoScreen02({super.key});

  @override
  State<GoScreen02> createState() => _GoScreen02State();
}

class _GoScreen02State extends State<GoScreen02> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Screen01'),
          foregroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'The Count pressed as:',
                style: GoogleFonts.aboreto(fontSize: 30.0),
              ),
              Text(
                '$counter times',
                style: GoogleFonts.aboreto(fontSize: 35.0),
              ),
              MaterialButton(
                  child: Icon(Icons.arrow_back),
                  color: Colors.grey.shade800,
                  onPressed: () {
                    context.go('/home');
                  })
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.elliptical(10, 10))),
            onPressed: () {
              setState(
                () {
                  counter++;
                },
              );
            },
            child: Icon(Icons.add)));
  }
}
