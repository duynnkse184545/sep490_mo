import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sep490_mo/features/post/data/models/post_models.dart';
import 'package:sep490_mo/features/post/presentation/controllers/create_post_controller.dart';
import 'package:sep490_mo/features/post/presentation/states/create_post_state.dart';

class CreatePostScreen extends HookConsumerWidget {
  final int fanHubId;

  const CreatePostScreen({super.key, required this.fanHubId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final contentController = useTextEditingController();
    final titleController = useTextEditingController();
    final hashtagsController = useTextEditingController();

    final postState = ref.watch(createPostControllerProvider);
    final controller = ref.read(createPostControllerProvider.notifier);

    final selectedType = useState(PostType.text);

    void submit() {
      if (formKey.currentState!.validate()) {
        final hashtags = hashtagsController.text
            .split(',')
            .map((e) => e.trim().replaceAll('#', ''))
            .where((e) => e.isNotEmpty)
            .toList();

        controller.createPost(
          fanHubId: fanHubId,
          postType: selectedType.value,
          title: titleController.text.isEmpty ? null : titleController.text,
          content: contentController.text,
          hashtags: hashtags.isNotEmpty ? hashtags : null,
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
        actions: [
          TextButton(
            onPressed: postState.maybeWhen(
              loading: () => null, // disable while loading
              orElse: () => submit,
            ),
            child: const Text('Post'),
          ),
        ],
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            DropdownButtonFormField<PostType>(
              initialValue: selectedType.value,
              decoration: const InputDecoration(
                labelText: 'Post Type',
                border: OutlineInputBorder(),
              ),
              items: PostType.values.map((type) {
                return DropdownMenuItem(
                  value: type,
                  child: Text(type.name.toUpperCase()),
                );
              }).toList(),
              onChanged: (value) {
                if (value != null) selectedType.value = value;
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
              controller: contentController,
              decoration: const InputDecoration(
                labelText: 'Content',
                border: OutlineInputBorder(),
                hintText: 'What\'s on your mind?',
              ),
              maxLines: 5,
              validator: (value) =>
              (value == null || value.isEmpty) ? 'Content is required' : null,
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
            const SizedBox(height: 24),
            postState.when(
              initial: () => ElevatedButton(
                onPressed: submit,
                child: const Text('Create Post'),
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              success: () => Column(
                children: [
                  const Icon(Icons.check_circle, color: Colors.green, size: 48),
                  const SizedBox(height: 8),
                  const Text('Post created successfully!'),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      controller.reset();
                      Navigator.of(context).pop();
                    },
                    child: const Text('Done'),
                  ),
                ],
              ),
              error: (message) => Column(
                children: [
                  Text(message, style: const TextStyle(color: Colors.red)),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: controller.reset,
                    child: const Text('Try Again'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}