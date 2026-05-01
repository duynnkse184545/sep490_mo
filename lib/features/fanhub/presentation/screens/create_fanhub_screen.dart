import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sep490_mo/features/fanhub/data/models/fanhub_models.dart';
import 'package:sep490_mo/features/fanhub/presentation/controllers/create_fanhub_controller.dart';
import 'package:sep490_mo/features/fanhub/presentation/states/create_fanhub_state.dart';

class CreateFanHubScreen extends HookConsumerWidget {
  const CreateFanHubScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final hubNameController = useTextEditingController();
    final subdomainController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final themeColorController = useTextEditingController(text: '#000000');
    final categoriesController = useTextEditingController();
    
    final isPrivate = useState(false);
    final requiresApproval = useState(false);

    // Media state
    final selectedAvatar = useState<File?>(null);
    final selectedBanner = useState<File?>(null);

    final picker = useMemoized(() => ImagePicker());

    final createController = ref.read(createFanHubControllerProvider.notifier);
    final createState = ref.watch(createFanHubControllerProvider);

    Future<void> pickAvatar() async {
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        selectedAvatar.value = File(pickedFile.path);
      }
    }

    Future<void> pickBanner() async {
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        selectedBanner.value = File(pickedFile.path);
      }
    }

    ref.listen(createFanHubControllerProvider, (previous, next) {
      next.maybeWhen(
        success: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('FanHub created successfully!')),
          );
          Navigator.of(context).pop();
        },
        orElse: () {},
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Your FanHub'),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Text(
              'Build a community for your favorite VTubers or interests.',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 24),
            
            TextFormField(
              controller: hubNameController,
              decoration: const InputDecoration(
                labelText: 'Hub Name',
                border: OutlineInputBorder(),
                hintText: 'e.g. Hololive EN Fans',
              ),
              validator: (v) => (v == null || v.isEmpty) ? 'Required' : null,
            ),
            const SizedBox(height: 16),
            
            TextFormField(
              controller: subdomainController,
              decoration: const InputDecoration(
                labelText: 'Subdomain',
                border: OutlineInputBorder(),
                hintText: 'e.g. holo-en',
                prefixText: 'h/',
              ),
              validator: (v) => (v == null || v.isEmpty) ? 'Required' : null,
            ),
            const SizedBox(height: 16),
            
            TextFormField(
              controller: descriptionController,
              maxLines: 3,
              decoration: const InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
              validator: (v) => (v == null || v.isEmpty) ? 'Required' : null,
            ),
            const SizedBox(height: 16),

            TextFormField(
              controller: categoriesController,
              decoration: const InputDecoration(
                labelText: 'Categories (comma separated)',
                border: OutlineInputBorder(),
                hintText: 'Vtuber, Idol, Gaming',
              ),
              validator: (v) => (v == null || v.isEmpty) ? 'Required' : null,
            ),
            const SizedBox(height: 16),

            // Media Selection
            _buildMediaPicker(
              context: context,
              label: "Hub Avatar",
              icon: Icons.face,
              onTap: pickAvatar,
              file: selectedAvatar.value,
              onRemove: () => selectedAvatar.value = null,
            ),
            const SizedBox(height: 16),
            _buildMediaPicker(
              context: context,
              label: "Hub Banner",
              icon: Icons.image,
              onTap: pickBanner,
              file: selectedBanner.value,
              onRemove: () => selectedBanner.value = null,
              isBanner: true,
            ),
            const SizedBox(height: 16),

            SwitchListTile(
              title: const Text('Private Hub'),
              subtitle: const Text('Only approved members can view content'),
              value: isPrivate.value,
              onChanged: (v) => isPrivate.value = v,
            ),
            
            SwitchListTile(
              title: const Text('Requires Approval'),
              subtitle: const Text('New members must be approved by you'),
              value: requiresApproval.value,
              onChanged: (v) => requiresApproval.value = v,
            ),

            const SizedBox(height: 32),
            
            createState.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (msg) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(msg, style: const TextStyle(color: Colors.red), textAlign: TextAlign.center),
              ),
              orElse: () => const SizedBox.shrink(),
            ),

            ElevatedButton(
              onPressed: createState.maybeWhen(
                loading: () => null,
                orElse: () => () {
                  if (formKey.currentState!.validate()) {
                    final request = CreateFanHubRequest(
                      hubName: hubNameController.text.trim(),
                      subdomain: subdomainController.text.trim().toLowerCase(),
                      description: descriptionController.text.trim(),
                      themeColor: themeColorController.text.trim(),
                      category: categoriesController.text.split(',').map((e) => e.trim()).toList(),
                      isPrivate: isPrivate.value,
                      requiresApproval: requiresApproval.value,
                    );
                    createController.createFanHub(
                      request,
                      avatarPath: selectedAvatar.value?.path,
                      bannerPath: selectedBanner.value?.path,
                    );
                  }
                },
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text('Create FanHub'),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildMediaPicker({
    required BuildContext context,
    required String label,
    required IconData icon,
    required VoidCallback onTap,
    required File? file,
    required VoidCallback onRemove,
    bool isBanner = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            height: isBanner ? 120 : 80,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey[300]!),
              image: file != null
                  ? DecorationImage(
                      image: FileImage(file),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
            child: file == null
                ? Icon(icon, color: Colors.grey[600], size: 32)
                : Stack(
                    children: [
                      Positioned(
                        right: 4,
                        top: 4,
                        child: GestureDetector(
                          onTap: onRemove,
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.black.withValues(alpha: 0.6),
                            child: const Icon(Icons.close, size: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ],
    );
  }
}
