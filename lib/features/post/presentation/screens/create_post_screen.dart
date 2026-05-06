import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/retro_text_field.dart';
import 'package:sep490_mo/features/member/data/models/member_models.dart';
import 'package:sep490_mo/features/member/presentation/controllers/member_checking_controller.dart';
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

    // Member check for VTuber role
    final memberAsync = ref.watch(memberCheckingControllerProvider(fanHubId: fanHubId));
    final memberRole = memberAsync.whenOrNull(data: (m) => m.roleInHub);
    final isVtuber = memberRole == MemberRole.vtuber;

    // Poll state
    final pollOptions = useState<List<String>>(['', '']);

    // Media state
    final selectedImages = useState<List<File>>([]);
    final selectedVideo = useState<File?>(null);

    final postState = ref.watch(createPostControllerProvider);
    final postController = ref.read(createPostControllerProvider.notifier);

    final selectedType = useState(PostType.text);
    final isAnnouncement = useState(false);
    final isSchedule = useState(false);
    final isSubmitting = useState(false);

    final picker = useMemoized(() => ImagePicker());

    // Listen to text changes to update the button state
    useListenable(contentController);
    useListenable(titleController);

    final isFormValid = useMemoized(() {
      final hasContent = contentController.text.trim().isNotEmpty;

      switch (selectedType.value) {
        case PostType.image:
          return hasContent && selectedImages.value.isNotEmpty;
        case PostType.video:
          return hasContent && selectedVideo.value != null;
        case PostType.poll:
          final validOptions =
              pollOptions.value.where((e) => e.trim().isNotEmpty).length;
          return hasContent &&
              validOptions >= 2 &&
              titleController.text.trim().isNotEmpty;
        case PostType.text:
        default:
          return hasContent;
      }
    }, [
      selectedType.value,
      selectedImages.value,
      selectedVideo.value,
      pollOptions.value,
      contentController.text,
      titleController.text,
    ]);

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
            isAnnouncement: isAnnouncement.value,
            isSchedule: isSchedule.value,
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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text(
          "CREATE POST",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.border, width: 2),
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.border,
                    offset: Offset(6, 6),
                    blurRadius: 0,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "What's on your mind?",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const Divider(height: 32),

                  // VTuber exclusive toggles
                  if (isVtuber) ...[
                    Row(
                      children: [
                        Expanded(
                          child: _buildRetroToggle(
                            context: context,
                            label: "Announcement",
                            value: isAnnouncement.value,
                            onChanged: (val) => isAnnouncement.value = val,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _buildRetroToggle(
                            context: context,
                            label: "Schedule",
                            value: isSchedule.value,
                            onChanged: (val) => isSchedule.value = val,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                  ],

                  // Post Type Selector
                  _buildLabel(context, "Post Type"),
                  _buildPostTypeSelector(selectedType),
                  const SizedBox(height: 24),

                  // Title
                  _buildLabel(context, "Title (Optional)"),
                  RetroTextField(
                    hintText: "Enter post title",
                    controller: titleController,
                    enabled: !isSubmitting.value,
                  ),
                  const SizedBox(height: 24),

                  // Hashtags
                  _buildLabel(context, "Hashtags"),
                  RetroTextField(
                    hintText: "Add hashtags (comma-separated)",
                    controller: hashtagsController,
                    enabled: !isSubmitting.value,
                  ),
                  const SizedBox(height: 24),

                  // Content
                  _buildLabel(context, "Content Text", required: true),
                  RetroTextField(
                    hintText: "Tell your fans something...",
                    controller: contentController,
                    enabled: !isSubmitting.value,
                    isMultiline: true,
                  ),
                  const SizedBox(height: 24),

                  // Dynamic Areas
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

                  if (selectedType.value == PostType.image) _buildMediaUploadArea(
                    context: context,
                    label: "Upload Images",
                    icon: Icons.add_a_photo_outlined,
                    onTap: pickImages,
                    files: selectedImages.value,
                    onRemove: (idx) {
                       final newImages = List<File>.from(selectedImages.value);
                       newImages.removeAt(idx);
                       selectedImages.value = newImages;
                    }
                  ),

                  if (selectedType.value == PostType.video) _buildMediaUploadArea(
                    context: context,
                    label: "Upload Video",
                    icon: Icons.videocam_outlined,
                    onTap: pickVideo,
                    files: selectedVideo.value != null ? [selectedVideo.value!] : [],
                    onRemove: (_) => selectedVideo.value = null,
                  ),

                  const SizedBox(height: 32),

                  // Actions
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          "Cancel",
                          style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(width: 12),
                      _buildRetroButton(
                        context: context,
                        text: "Create Post",
                        isLoading: isSubmitting.value,
                        onTap: isFormValid ? submit : () {},
                      ),
                    ],
                  ),

                  if (postState.maybeWhen(error: (_) => true, orElse: () => false))
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text(
                        postState.maybeWhen(error: (msg) => msg, orElse: () => ""),
                        style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(BuildContext context, String text, {bool required = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: RichText(
        text: TextSpan(
          text: text,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: const Color(0xFF323232),
              ),
          children: [
            if (required)
              const TextSpan(
                text: " *",
                style: TextStyle(color: Colors.red),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildRetroToggle({
    required BuildContext context,
    required String label,
    required bool value,
    required Function(bool) onChanged,
  }) {
    return InkWell(
      onTap: () => onChanged(!value),
      child: Row(
        children: [
          SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(
              value: value,
              onChanged: (v) => onChanged(v ?? false),
              activeColor: AppColors.primary,
              side: const BorderSide(color: AppColors.border, width: 2),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Color(0xFF323232)),
          ),
        ],
      ),
    );
  }

  Widget _buildPostTypeSelector(ValueNotifier<PostType> selectedType) {
    final types = [
      {'type': PostType.text, 'label': 'Text', 'icon': Icons.short_text},
      {'type': PostType.image, 'label': 'Image', 'icon': Icons.image_outlined},
      {'type': PostType.video, 'label': 'Video', 'icon': Icons.videocam_outlined},
      {'type': PostType.poll, 'label': 'Poll', 'icon': Icons.poll_outlined},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: types.map((item) {
          final isSelected = selectedType.value == item['type'];
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: () => selectedType.value = item['type'] as PostType,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.primary : const Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: isSelected ? AppColors.border : Colors.black12,
                    width: 1.5,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      item['icon'] as IconData,
                      size: 18,
                      color: isSelected ? Colors.white : const Color(0xFF666666),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      item['label'] as String,
                      style: TextStyle(
                        color: isSelected ? Colors.white : const Color(0xFF666666),
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildMediaUploadArea({
    required BuildContext context,
    required String label,
    required IconData icon,
    required VoidCallback onTap,
    required List<File> files,
    required Function(int) onRemove,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5F5),
              border: Border.all(color: Colors.black12, width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Icon(icon, size: 40, color: const Color(0xFF666666)),
                const SizedBox(height: 8),
                Text(
                  label,
                  style: const TextStyle(
                    color: Color(0xFF666666),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (files.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: files.length,
                itemBuilder: (context, idx) => Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.file(files[idx], width: 80, height: 80, fit: BoxFit.cover),
                      ),
                      Positioned(
                        right: 2,
                        top: 2,
                        child: GestureDetector(
                          onTap: () => onRemove(idx),
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.black.withValues(alpha: 0.6),
                            child: const Icon(Icons.close, size: 12, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildRetroButton({
    required BuildContext context,
    required String text,
    required VoidCallback onTap,
    bool isLoading = false,
  }) {
    return InkWell(
      onTap: isLoading ? null : onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: AppColors.primary,
          border: Border.all(color: AppColors.border, width: 2),
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(color: AppColors.border, offset: Offset(4, 4)),
          ],
        ),
        child: isLoading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ),
              )
            : Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
      ),
    );
  }
}
