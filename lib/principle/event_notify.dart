import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EventNotifyWidgets extends StatefulWidget {
  const EventNotifyWidgets({super.key});

  @override
  State<EventNotifyWidgets> createState() => _EventNotifyWidgetsState();
}

class _EventNotifyWidgetsState extends State<EventNotifyWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("演示事件传播"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Listener(
                onPointerDown: (event) {
                  print("onPointerDown wrap");
                },
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors
                      .primaries[Random().nextInt(Colors.primaries.length - 1)],
                  alignment: Alignment.center,
                  child: Listener(
                    onPointerDown: (event) {
                      print("onPointerDown");
                    },
                    child: Material(
                      elevation: 6,
                      child: Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length - 1)],
                        child: const Text(
                          "点击我",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              LayoutBuilder(
                builder: (context,c) {
                  print(c);
                  return const Text("1");
                }
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
      ),
    );
  }
}

class MyStateWidgets extends StatefulWidget {
  const MyStateWidgets({super.key});

  @override
  State<MyStateWidgets> createState() => _MyStateWidgetsState();
}

class _MyStateWidgetsState extends State<MyStateWidgets> {
  int a = 2;
  @override
  Widget build(BuildContext context) {
    print("_MyStateWidgetsState build");
    return Text("$a");
  }
}

class MyWidget extends StatelessWidget {
  final int age = 2;
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    print("MyWidget build");
    return Text("$age");
  }
}
