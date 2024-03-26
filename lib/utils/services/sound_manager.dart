import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class SoundManager {
  static late final AudioPlayer _player;

  const SoundManager._();

  static Future<SoundManager> getInstance() async {
    _player = AudioPlayer();
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());
    return const SoundManager._();
  }

  Future<Duration> play({required String audio}) async {
    try {
      final duration = await _player.setAudioSource(
        AudioSource.asset("assets/audio/$audio.mp3"),
      );
      _player.play();
      return duration ?? Duration.zero;
    } catch (e) {
      debugPrint("Error loading audio source: $e");
      return Duration.zero;
    }
  }

  Future<void> dispose() async {
    await _player.dispose();
  }
}
