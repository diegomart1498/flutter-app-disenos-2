import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconHeader extends StatelessWidget {
  final IconData icon;
  final String titulo;
  final String subtitulo;
  final Color color1;
  final Color color2;

  const IconHeader({
    super.key,
    required this.icon,
    required this.titulo,
    required this.subtitulo,
    this.color1 = const Color(0xff526BF6),
    this.color2 = const Color(0xff67acf2),
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _IconHeaderBackground(color1, color2),
        _PlusBackground(icon),
        _TituloHeader(icon, titulo, subtitulo),
      ],
    );
  }
}

class _TituloHeader extends StatelessWidget {
  final IconData icon;
  final String titulo;
  final String subtitulo;
  const _TituloHeader(this.icon, this.titulo, this.subtitulo);

  @override
  Widget build(BuildContext context) {
    final Color colorT = Colors.white.withOpacity(0.7);
    return Column(
      children: [
        const SizedBox(height: 80, width: double.infinity),
        Text(
          subtitulo,
          style: TextStyle(
            fontSize: 20,
            color: colorT,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          titulo,
          style: TextStyle(
            fontSize: 25,
            color: colorT,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        FaIcon(
          icon,
          color: Colors.white,
          size: 80,
        ),
      ],
    );
  }
}

class _PlusBackground extends StatelessWidget {
  final IconData icon;
  const _PlusBackground(this.icon);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -50,
      left: -70,
      child: FaIcon(
        icon,
        color: Colors.white.withOpacity(0.2),
        size: 250,
      ),
    );
  }
}

class _IconHeaderBackground extends StatelessWidget {
  final Color color1;
  final Color color2;
  const _IconHeaderBackground(this.color1, this.color2);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(80)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            color1,
            color2,
          ],
        ),
      ),
    );
  }
}
