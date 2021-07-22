import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget{
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: SvgPicture.asset('assets/appbar/title.svg'),
      centerTitle: true,
      elevation: 0,
      actions: [
        IconButton(
          icon: SvgPicture.asset('assets/appbar/search.svg'),
          tooltip: '검색',
          onPressed: () {
            // handle the press
          },
        ),
        SizedBox(width: 10)
      ],
    );
  }
}
