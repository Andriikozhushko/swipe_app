import 'package:flutter/material.dart';

import '../../style/colors.dart';
import '../../style/font.dart';

class MfcPage extends StatelessWidget {
  const MfcPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whitef5,
        leading: IconButton(
          icon: Image.asset('assets/img/chevron-down.png'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'МФЦ',
          style: appBarInfoPageText,
        ),
        titleSpacing: 0,
        actions: [
          IconButton(
            icon: Image.asset('assets/img/x-circle.png'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/img/bigmap.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            left: 80,
            top: 350,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/img/map-pinmfs.png',
                  width: 50,
                  height: 50,
                ),
              ],
            ),
          ),
          Positioned(
            left: 180,
            top: 280,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/img/mepoint.png',
                  width: 30,
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
