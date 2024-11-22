import 'package:flutter/material.dart';
import 'package:quran_academy/models/quran_card_model.dart';
import 'package:quran_academy/widgets/enroll_button.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class HoverFlipCard extends StatefulWidget {
  final QuranCardModel card;

  const HoverFlipCard({Key? key, required this.card}) : super(key: key);

  @override
  State<HoverFlipCard> createState() => _HoverFlipCardState();
}

class _HoverFlipCardState extends State<HoverFlipCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _hovering = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onHover(bool hovering) {
    setState(() {
      _hovering = hovering;
    });
    if (hovering) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          final isFrontVisible = _animation.value < 0.5;

          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(_animation.value * 3.14159), // Flip on Y-axis
            child: isFrontVisible
                ? _buildBackCard(widget.card)
                : Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()..rotateY(3.14159),
                    child: _buildFrontCard(widget.card)),
          );
        },
      ),
    );
  }

  Widget _buildBackCard(QuranCardModel card) {
    return Container(
      width: 200,
      height: 280,
      decoration: BoxDecoration(
        color: card.color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(card.icon, size: 48, color: Colors.white),
            const SizedBox(height: 16),
            Text(
              card.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFrontCard(QuranCardModel card) {
    return Container(
      width: 200,
      height: 280,
      decoration: BoxDecoration(
        color: card.color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(card.icon, size: 48, color: Colors.white),
            const SizedBox(height: 16),
            Text(
              card.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              card.description,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8,
            ),
            EnrollButton(
              onTap: () {
                html.window.open("https://wa.me/923706269220", "newtab");
                debugPrint('Enroll button clicked for ${card.title}');
              },
              tiTle: 'Enroll',
            ),
          ],
        ),
      ),
    );
  }
}
