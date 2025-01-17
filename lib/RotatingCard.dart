import 'package:flutter/material.dart';
import 'dart:js' as js;

class RotatingCard extends StatefulWidget {
  final String background;
  final String subject;
  final String? url;

  const RotatingCard(
      {Key? key, required this.background, required this.subject, this.url});

  @override
  _RotatingCardState createState() => _RotatingCardState();
}

class _RotatingCardState extends State<RotatingCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _opacityAnimation;
  bool _hovering = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _rotationAnimation = Tween<double>(begin: 0, end: 0.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
  }

  void _onEnter(bool hovering) {
    setState(() {
      _hovering = hovering;
      hovering ? _controller.forward() : _controller.reverse();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.url != null) {
          js.context.callMethod('open', [widget.url]);
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 4,
        height: 300,
        child: Center(
          child: MouseRegion(
            onEnter: (_) => _onEnter(true),
            onExit: (_) => _onEnter(false),
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..rotateX(-_rotationAnimation.value),
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 233,
                        height: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: _hovering ? Colors.white : Colors.black,
                            width: 2,
                          ),
                          boxShadow: _hovering
                              ? [
                                  const BoxShadow(
                                    color: Colors.black38,
                                    blurRadius: 32,
                                    spreadRadius: 2,
                                    offset: Offset(0, 10),
                                  )
                                ]
                              : null,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            widget.background,
                            fit: BoxFit.cover,
                            alignment: Alignment(-0.2, 0),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: ShaderMask(
                          shaderCallback: (rect) {
                            return const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.black, Colors.transparent],
                              stops: [0.7, 0.85],
                            ).createShader(
                                Rect.fromLTRB(0, 0, rect.width, rect.height));
                          },
                          blendMode: BlendMode.dstIn,
                          child: Opacity(
                            opacity: _opacityAnimation.value,
                            child: Transform.translate(
                              offset: Offset(0, _opacityAnimation.value * -50),
                              child: Image.asset(
                                widget.subject,
                                width: MediaQuery.of(context).size.width < 1000
                                    ? 200
                                    : 300,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
