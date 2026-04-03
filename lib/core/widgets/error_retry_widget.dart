import 'package:flutter/material.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';

/// Error banner widget for displaying error messages
class ErrorBanner extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;
  final VoidCallback? onDismiss;

  const ErrorBanner({
    super.key,
    required this.message,
    this.onRetry,
    this.onDismiss,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.errorBackground,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              const Icon(Icons.error_outline, color: AppColors.onError, size: 24),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  message,
                  style: const TextStyle(color: AppColors.onError),
                ),
              ),
              if (onDismiss != null)
                IconButton(
                  icon: const Icon(Icons.close, color: AppColors.onError),
                  onPressed: onDismiss,
                ),
            ],
          ),
          if (onRetry != null) ...[
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: onRetry,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.onError,
              ),
              child: const Text('Retry', style: TextStyle(color: AppColors.onPrimary)),
            ),
          ],
        ],
      ),
    );
  }
}
