import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:video_player/video_player.dart';

class AppVideoPlayer extends HookWidget {
  final String url;
  final bool autoPlay;
  final bool looping;

  const AppVideoPlayer({
    super.key,
    required this.url,
    this.autoPlay = false,
    this.looping = false,
  });

  @override
  Widget build(BuildContext context) {
    final videoController = useMemoized(
      () => VideoPlayerController.networkUrl(Uri.parse(url)),
      [url],
    );

    final chewieController = useState<ChewieController?>(null);

    useEffect(() {
      Future<void> initVideo() async {
        try {
          await videoController.initialize();
          if (context.mounted) {
            chewieController.value = ChewieController(
              videoPlayerController: videoController,
              autoPlay: autoPlay,
              looping: looping,
              aspectRatio: videoController.value.aspectRatio,
              errorBuilder: (context, errorMessage) {
                return Center(
                  child: Text(
                    errorMessage,
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              },
            );
          }
        } catch (e) {
          debugPrint('Error initializing video: $e');
        }
      }

      initVideo();

      return () {
        videoController.dispose();
        chewieController.value?.dispose();
      };
    }, [videoController]);

    return Container(
      color: Colors.black,
      child: chewieController.value != null &&
              chewieController.value!.videoPlayerController.value.isInitialized
          ? Chewie(controller: chewieController.value!)
          : const Center(
              child: CircularProgressIndicator(color: Colors.white),
            ),
    );
  }
}
