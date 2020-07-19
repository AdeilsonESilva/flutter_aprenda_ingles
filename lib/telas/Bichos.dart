import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Bichos extends StatefulWidget {
  @override
  _BichosState createState() => _BichosState();
}

class _BichosState extends State<Bichos> {
  final _player = AudioCache(prefix: 'audios/');

  void _executar(String nomeAudio) async {
    await _player.play('$nomeAudio.mp3');
  }

  @override
  void initState() {
    super.initState();
    _player.loadAll([
      'cao.mp3',
      'gato.mp3',
      'leao.mp3',
      'macaco.mp3',
      'ovelha.mp3',
      'vaca.mp3',
    ]);
  }

  @override
  Widget build(BuildContext context) {
    // var largura = MediaQuery.of(context).size.width;
    // var altura = MediaQuery.of(context).size.height;
    var aspectRatio = MediaQuery.of(context).size.aspectRatio * 2;

    return GridView.count(
      crossAxisCount: 2,
      // scrollDirection: Axis.horizontal,
      childAspectRatio: aspectRatio,
      children: <Widget>[
        GestureDetector(
          onTap: () => _executar('cao'),
          child: Image.asset('assets/images/cao.png'),
        ),
        GestureDetector(
          onTap: () => _executar('gato'),
          child: Image.asset('assets/images/gato.png'),
        ),
        GestureDetector(
          onTap: () => _executar('leao'),
          child: Image.asset('assets/images/leao.png'),
        ),
        GestureDetector(
          onTap: () => _executar('macaco'),
          child: Image.asset('assets/images/macaco.png'),
        ),
        GestureDetector(
          onTap: () => _executar('ovelha'),
          child: Image.asset('assets/images/ovelha.png'),
        ),
        GestureDetector(
          onTap: () => _executar('vaca'),
          child: Image.asset('assets/images/vaca.png'),
        ),
      ],
    );
  }
}
