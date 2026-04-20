import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';
import 'package:sep490_mo/features/post/presentation/controllers/create_post_controller.dart';
import 'package:sep490_mo/features/post/presentation/states/create_post_state.dart';
import 'package:sep490_mo/features/post/presentation/widgets/poll_options_widget.dart';

class CreatePostScreen extends HookConsumerWidget {
  final int fanHubId;

  const CreatePostScreen({super.key, required this.fanHubId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final contentController = useTextEditingController();
    final titleController = useTextEditingController();
    final hashtagsController = useTextEditingController();

    // Poll state
    final pollOptions = useState<List<String>>(['', '']);

    // Media state
    final selectedImages = useState<List<File>>([]);
    final selectedVideo = useState<File?>(null);

    final postState = ref.watch(createPostControllerProvider);
    final postController = ref.read(createPostControllerProvider.notifier);

    final selectedType = useState(PostType.text);
    final isSubmitting = useState(false);

    final picker = useMemoized(() => ImagePicker());

    Future<void> pickImages() async {
      final pickedFiles = await picker.pickMultiImage();
      if (pickedFiles.isNotEmpty) {
        selectedImages.value = pickedFiles.map((e) => File(e.path)).toList();
      }
    }

    Future<void> pickVideo() async {
      final pickedFile = await picker.pickVideo(source: ImageSource.gallery);
      if (pickedFile != null) {
        selectedVideo.value = File(pickedFile.path);
      }
    }

    Future<void> submit() async {
      if (!formKey.currentState!.validate()) return;

      final hashtags = hashtagsController.text
          .split(',')
          .map((e) => e.trim().replaceAll('#', ''))
          .where((e) => e.isNotEmpty)
          .toList();

      isSubmitting.value = true;

      try {
        if (selectedType.value == PostType.poll) {
          final validOptions = pollOptions.value
              .map((e) => e.trim())
              .where((e) => e.isNotEmpty)
              .toList();

          final request = PollRequest(
            fanHubId: fanHubId,
            title: titleController.text,
            content: contentController.text,
            options: validOptions,
            hashtags: hashtags.isNotEmpty ? hashtags : [],
          );

          await postController.createPoll(request);
        } else {
          await postController.createPost(
            fanHubId: fanHubId,
            postType: selectedType.value,
            title: titleController.text.isEmpty ? null : titleController.text,
            content: contentController.text,
            hashtags: hashtags.isNotEmpty ? hashtags : null,
            images: selectedImages.value.map((e) => e.path).toList(),
            video: selectedVideo.value?.path,
          );
        }
      } finally {
        isSubmitting.value = false;
      }
    }

    // Observe success state of postController
    ref.listen(createPostControllerProvider, (previous, next) {
      next.maybeWhen(
        success: () {
          Navigator.of(context).pop();
        },
        orElse: () {},
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
        actions: [
          if (isSubmitting.value)
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              ),
            )
          else
            TextButton(onPressed: submit, child: const Text('Post')),
        ],
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Post Type Toggle
            SegmentedButton<PostType>(
              segments: const [
                ButtonSegment(
                  value: PostType.text,
                  label: Text('Text'),
                  icon: Icon(Icons.short_text),
                ),
                ButtonSegment(
                  value: PostType.image,
                  label: Text('Image'),
                  icon: Icon(Icons.image_outlined),
                ),
                ButtonSegment(
                  value: PostType.video,
                  label: Text('Video'),
                  icon: Icon(Icons.videocam_outlined),
                ),
                ButtonSegment(
                  value: PostType.poll,
                  label: Text('Poll'),
                  icon: Icon(Icons.poll_outlined),
                ),
              ],
              selected: {selectedType.value},
              onSelectionChanged: (Set<PostType> newSelection) {
                selectedType.value = newSelection.first;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Title (optional)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: hashtagsController,
              decoration: const InputDecoration(
                labelText: 'Hashtags (comma separated)',
                border: OutlineInputBorder(),
                hintText: 'gaming, anime, music',
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: contentController,
              decoration: const InputDecoration(
                labelText: 'Content',
                border: OutlineInputBorder(),
                hintText: 'What\'s on your mind?',
              ),
              maxLines: 5,
              validator: (value) => (value == null || value.isEmpty)
                  ? 'Content is required'
                  : null,
            ),

            const SizedBox(height: 16),

            // Extra Area based on Type
            if (selectedType.value == PostType.poll)
              PollOptionsWidget(
                options: pollOptions.value,
                onAddOption: () {
                  if (pollOptions.value.length < 10) {
                    pollOptions.value = [...pollOptions.value, ''];
                  }
                },
                onRemoveOption: (index) {
                  if (pollOptions.value.length > 2) {
                    final newOptions = List<String>.from(pollOptions.value);
                    newOptions.removeAt(index);
                    pollOptions.value = newOptions;
                  }
                },
                onOptionChanged: (index, val) {
                  pollOptions.value[index] = val;
                },
              ),

            if (selectedType.value == PostType.image) ...[
              ElevatedButton.icon(
                onPressed: pickImages,
                icon: const Icon(Icons.add_a_photo),
                label: const Text('Pick Images'),
              ),
              if (selectedImages.value.isNotEmpty)
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: selectedImages.value.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8, top: 8),
                        child: Stack(
                          children: [
                            Image.file(
                              selectedImages.value[index],
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              child: GestureDetector(
                                onTap: () {
                                  final newImages = List<File>.from(
                                    selectedImages.value,
                                  );
                                  newImages.removeAt(index);
                                  selectedImages.value = newImages;
                                },
                                child: Container(
                                  color: Colors.black54,
                                  child: const Icon(
                                    Icons.close,
                                    color: Colors.white,
                                    size: 16,
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
            ],

            if (selectedType.value == PostType.video) ...[
              ElevatedButton.icon(
                onPressed: pickVideo,
                icon: const Icon(Icons.video_library),
                label: const Text('Pick Video'),
              ),
              if (selectedVideo.value != null)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      const Icon(Icons.check_circle, color: Colors.green),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(selectedVideo.value!.path.split('/').last),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => selectedVideo.value = null,
                      ),
                    ],
                  ),
                ),
            ],

            const SizedBox(height: 24),

            postState.maybeWhen(
              error: (message) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  message,
                  style: const TextStyle(color: Colors.red),
                  textAlign: TextAlign.center,
                ),
              ),
              orElse: () => const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
