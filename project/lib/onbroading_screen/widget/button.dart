import 'package:flutter/material.dart';
import 'package:project/bottomNavigator.dart';

import '../../constants/constant.dart';

class Custom1stButton extends StatelessWidget {
  const Custom1stButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: CusColors.black1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const BottonNavigate(),
        ));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Get Started',style: TextStyle(color: Colors.black),),
          const Icon(
            Icons.arrow_forward,
            color: Color(0xff1E222B),
          ),
        ],
      ),
    );
  }
}
