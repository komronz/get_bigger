// lib/core/services/sound_service_stub.dart
// Real implementation used on all platforms via audioplayers.

import 'package:audioplayers/audioplayers.dart';
import 'sound_service.dart';

class SoundServiceImpl implements SoundService {
  SoundServiceImpl() {
    // Pre-load the click asset so first play has no delay.
    AudioCache.instance.load('sounds/click.wav');
  }

  AudioPlayer _newPlayer() => AudioPlayer();

  Future<void> _play({double volume = 1.0}) async {
    final player = _newPlayer();
    player.setVolume(volume);
    await player.play(AssetSource('sounds/click.wav'));
    // Dispose once the sound finishes.
    player.onPlayerComplete.first.then((_) => player.dispose());
  }

  @override
  void playMerge() => _play(volume: 0.6);

  @override
  void playDiscover() {
    // Play the click twice with a short delay for a "fanfare" feel.
    _play(volume: 1.0);
    Future.delayed(const Duration(milliseconds: 140), () => _play(volume: 0.9));
  }

  @override
  void playGameOver() => _play(volume: 0.5);

  @override
  void playWin() {
    _play(volume: 1.0);
    Future.delayed(const Duration(milliseconds: 160), () => _play(volume: 0.9));
    Future.delayed(const Duration(milliseconds: 320), () => _play(volume: 0.8));
  }
}
