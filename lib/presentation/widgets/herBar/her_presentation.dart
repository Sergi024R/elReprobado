import 'package:flutter/material.dart';

class HerPresentation extends StatelessWidget implements PreferredSizeWidget {
  final String nombre;
  final String urlAvatar;

  const HerPresentation({
    super.key,
    this.nombre = 'mejor jugador',
    this.urlAvatar =
        'https://fcb-abj-pre.s3.amazonaws.com/img/jugadors/MESSI.jpg',
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(4.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage(urlAvatar),
        ),
      ),
      backgroundColor: Colors.red,
      title: Text(nombre),
      centerTitle: false,
    );
  }

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
