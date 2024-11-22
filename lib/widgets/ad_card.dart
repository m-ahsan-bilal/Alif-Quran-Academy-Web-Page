import 'package:flutter/material.dart';
import 'package:quran_academy/models/quran_card_model.dart';

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
      duration: Duration(milliseconds: 500),
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

  Widget _buildFrontCard(QuranCardModel card) {
    return _buildCard(
      title: card.title,
      description: card.description,
      icon: card.icon,
      color: card.color,
    );
  }

  Widget _buildBackCard(QuranCardModel card) {
    return _buildCard(
      title: card.title,
      description: "",
      icon: card.icon,
      color: card.color,
    );
  }

  Widget _buildCard({
    required String title,
    required String description,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      width: 200,
      height: 250,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48, color: Colors.white),
            SizedBox(height: 16),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
