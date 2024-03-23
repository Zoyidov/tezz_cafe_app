import 'package:audio_session/audio_session.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class SoundManager {
  static final _player = AudioPlayer();
  const SoundManager._();
  static SoundManager getInstance() {
    return const SoundManager._();
  }

  Future<void> play() => _player.play();

  Future<void> initAudio({required String audio}) async {
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());
    // Listen to errors during playback.
    _player.playbackEventStream.listen((event) {
      debugPrint('A stream has event: $event');
    }, onError: (Object e, StackTrace stackTrace) {
      debugPrint('A stream error occurred: $e');
      debugPrint('$stackTrace');
    });
    try {
      await _player.setAudioSource(
        AudioSource.asset("assets/audio/$audio.mp3"),
      );
    } catch (e) {
      debugPrint("Error loading audio source: $e");
    }
  }
}
