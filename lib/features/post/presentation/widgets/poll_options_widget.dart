import 'package:flutter/material.dart';

class PollOptionsWidget extends StatelessWidget {
  final List<String> options;
  final Function(int, String) onOptionChanged;
  final VoidCallback onAddOption;
  final Function(int) onRemoveOption;

  const PollOptionsWidget({
    super.key,
    required this.options,
    required this.onOptionChanged,
    required this.onAddOption,
    required this.onRemoveOption,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Poll Options', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        ...options.asMap().entries.map((entry) {
          final index = entry.key;
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    initialValue: entry.value,
                    onChanged: (val) => onOptionChanged(index, val),
                    decoration: InputDecoration(
                      hintText: 'Option ${index + 1}',
                      border: const OutlineInputBorder(),
                      isDense: true,
                    ),
                    validator: (value) =>
                        (value == null || value.trim().isEmpty) ? 'Option cannot be empty' : null,
                  ),
                ),
                if (options.length > 2)
                  IconButton(
                    icon: const Icon(Icons.remove_circle_outline, color: Colors.red),
                    onPressed: () => onRemoveOption(index),
                  ),
              ],
            ),
          );
        }),
        if (options.length < 10)
          TextButton.icon(
            onPressed: onAddOption,
            icon: const Icon(Icons.add),
            label: const Text('Add Option'),
          ),
      ],
    );
  }
}
