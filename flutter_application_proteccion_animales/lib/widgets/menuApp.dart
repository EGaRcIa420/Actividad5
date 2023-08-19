import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MenuAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Protección Especies',
        style: TextStyle(
          color: Color.fromARGB(222, 0, 0, 0),
          fontSize: 26,
          fontFamily: 'Preahvihear',
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.green,
      actions: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/img/YIQ4TWPFKFI5NLXOKNVRBC2PMU.jpg'),
          radius: 20,  
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(0, kToolbarHeight);
}
