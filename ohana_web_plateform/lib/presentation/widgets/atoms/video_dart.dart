import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DirectVideoAtom extends StatefulWidget {
  const DirectVideoAtom({super.key});

  @override
  State<DirectVideoAtom> createState() => _VideoAtomState();
}

class _VideoAtomState extends State<DirectVideoAtom> {
  late VideoPlayerController _VideoPlayerController;
  late ChewieController _chewieController;
  @override
  void initState() {
    super.initState();
    intPlayer();
  }

  intPlayer() async {
    _VideoPlayerController = VideoPlayerController.networkUrl(Uri.parse(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    ));
    await _VideoPlayerController.initialize().then((value) => setState(() {}));
    _chewieController = ChewieController(
        videoPlayerController: _VideoPlayerController,
        aspectRatio: _VideoPlayerController.value.aspectRatio,
        autoPlay: true,
        looping: true);
  }

  @override
  void dispose() {
    super.dispose();
    _VideoPlayerController.dispose();
    _chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Chewie(controller: _chewieController);
  }
}

class YoutubeVideoAtom extends StatefulWidget {
  const YoutubeVideoAtom({super.key});

  @override
  State<YoutubeVideoAtom> createState() => _YoutubeVideoAtomState();
}

class _YoutubeVideoAtomState extends State<YoutubeVideoAtom> {
  late YoutubePlayerController _youtubePlayerController;

  @override
  void initState() {
    super.initState();
    _youtubePlayerController = YoutubePlayerController(
      initialVideoId:
          YoutubePlayer.convertUrlToId('https://youtu.be/oQym5rV4vyE')!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        loop: true,
      ),
    );
  }

  @override
  void dispose() {
    _youtubePlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _youtubePlayerController,
      showVideoProgressIndicator: true,
      onReady: () {
        _youtubePlayerController.addListener(() {});
      },
    );
  }
}
