import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AppVideoPlayer extends HookWidget {
  final String url;
  final bool looping;

  const AppVideoPlayer({
    super.key,
    required this.url,
    this.looping = false,
  });

  @override
  Widget build(BuildContext context) {
    final chewieController = useState<ChewieController?>(null);
    final isVisible = useState(false);
    final isInitialized = useState(false);

    useEffect(() {
      if (!isVisible.value || isInitialized.value) return null;

      VideoPlayerController? videoController;
      ChewieController? chewie;
      bool disposed = false;

      Future<void> init() async {
        try {
          videoController = VideoPlayerController.networkUrl(Uri.parse(url));
          await videoController!.initialize();
          if (disposed || !context.mounted) {
            videoController?.dispose();
            return;
          }
          chewie = ChewieController(
            videoPlayerController: videoController!,
            autoPlay: false,
            looping: looping,
            aspectRatio: videoController!.value.aspectRatio,
            errorBuilder: (context, errorMessage) => Center(
              child: Text(errorMessage, style: const TextStyle(color: Colors.white)),
            ),
          );
          chewieController.value = chewie;
          isInitialized.value = true;
        } catch (e) {
          debugPrint('Error initializing video: $e');
        }
      }

      init();

      return () {
        disposed = true;
        chewie?.dispose();
        videoController?.dispose();
        chewieController.value = null;
        isInitialized.value = false;
      };
    }, [isVisible.value, url]);

    return VisibilityDetector(
      key: Key('video_$url'),
      onVisibilityChanged: (info) {
        isVisible.value = info.visibleFraction > 0.3;
      },
      child: Container(
        color: Colors.black,
        child: chewieController.value != null
            ? Chewie(controller: chewieController.value!)
            : const Center(child: CircularProgressIndicator(color: Colors.white)),
      ),
    );
  }
}