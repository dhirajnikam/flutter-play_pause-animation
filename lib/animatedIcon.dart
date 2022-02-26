import 'package:flutter/material.dart';

class AniIcon extends StatefulWidget {
  const AniIcon({Key? key}) : super(key: key);

  @override
  _AniIconState createState() => _AniIconState();
}

class _AniIconState extends State<AniIcon> with TickerProviderStateMixin {
  late AnimationController _animationPlay;
  bool play_pause = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationPlay =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));
  }

  @override
  void dispose() {
    _animationPlay.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            _play();
          },
          child: AnimatedIcon(
            
            size: 60,
              icon: AnimatedIcons.play_pause, progress: _animationPlay),
        ),
      ),
    );
  }

  _play() {
    play_pause = !play_pause;
    play_pause ? _animationPlay.forward() : _animationPlay.reverse();
  }
}
