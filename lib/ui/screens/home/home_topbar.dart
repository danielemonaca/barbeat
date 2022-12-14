import 'package:barbeat/ui/screens/settings/settings_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeTopBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(56);

  static const iconColor = Colors.black;
  static const logoPadding = EdgeInsets.only(left: 15);
  static const iconPadding = EdgeInsets.only(right: 15);

  @override
  Widget build(BuildContext context) {
    final white = Theme.of(context).primaryColor;
    void navigateToSettings() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Settings(),
        ),
      );
    }

    return AppBar(
      elevation: 0,
      title: const Text(
        'Home',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
      ),
      centerTitle: true,
      backgroundColor: white,
      leading: Padding(
        padding: logoPadding,
        child: Center(
          child: SvgPicture.asset(
            'assets/logos/logo.svg',
          ),
        ),
      ),
      actions: [
        Padding(
          padding: iconPadding,
          child: GestureDetector(
            onTap: navigateToSettings,
            child: SvgPicture.asset('assets/common/settings_icon.svg'),
          ),
        )
      ],
    );
  }
}
