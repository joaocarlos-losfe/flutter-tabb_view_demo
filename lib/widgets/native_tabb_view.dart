import 'package:flutter/material.dart';

class NativeTabbView extends StatefulWidget {
  const NativeTabbView({super.key});

  @override
  State<NativeTabbView> createState() => _NativeTabbViewState();
}

class _NativeTabbViewState extends State<NativeTabbView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car), text: "Carro"),
              Tab(icon: Icon(Icons.image)),
              Tab(text: "Sem icon"),
            ],
          ),
          title: const Text('Tabs Demo'),
        ),
        body: TabBarView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Tab com carro")],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Tab com image sem texto no tab"),
                Image.asset("assets/image.png", scale: 4),
              ],
            ),
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset("assets/predator-badlands-yautja.gif"),
            ),
          ],
        ),
      ),
    );
  }
}
