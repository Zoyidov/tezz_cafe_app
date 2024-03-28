import 'package:audio_session/audio_session.dart';
import 'package:just_audio/just_audio.dart';

class SoundManager {
  const SoundManager._();

  static Future<SoundManager> getInstance() async {
    return const SoundManager._();
  }

  Future<void> playNewOrder() async {
    final playlist = ConcatenatingAudioSource(
      children: [
        AudioSource.asset("assets/audio/new_order.mp3"),
        AudioSource.asset("assets/audio/sound.mp3"),
      ],
    );
    final player = AudioPlayer();
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());
    await player.setAudioSource(playlist);
    await player.play();
    await player.dispose();
  }

  Future<void> playNewCall() async {
    final playlist = ConcatenatingAudioSource(
      children: [
        AudioSource.asset("assets/audio/new_call.mp3"),
        AudioSource.asset("assets/audio/sound.mp3"),
        AudioSource.asset("assets/audio/sound.mp3"),
      ],
    );
    final player = AudioPlayer();
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());
    await player.setAudioSource(playlist);
    await player.play();
    await player.dispose();
  }
}
