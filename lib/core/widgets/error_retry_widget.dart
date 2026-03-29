import 'package:flutter/material.dart';
import '../error/failures.dart';
import '../error/failure_handler.dart';

/// Reusable widget to display errors with retry option
class ErrorRetryWidget extends StatelessWidget {
  final String message;
  final Failure? failure;
  final VoidCallback? onRetry;

  const ErrorRetryWidget({
    super.key,
    required this.message,
    this.failure,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    final icon = failure != null 
        ? FailureHandler.getFailureIcon(failure!) 
        : Icons.error_outline;
        
    final canRetry = onRetry != null && (failure == null || FailureHandler.isRetryable(failure!));

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 64,
              color: Colors.red.shade300,
            ),
            const SizedBox(height: 16),
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            if (canRetry) ...[
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: onRetry,
                icon: const Icon(Icons.refresh),
                label: const Text('Retry'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

/// Banner widget to show error at top of screen
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
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.red.shade100,
        border: Border(
          bottom: BorderSide(color: Colors.red.shade300),
        ),
      ),
      child: Row(
        children: [
          Icon(Icons.error_outline, color: Colors.red.shade700),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              message,
              style: TextStyle(color: Colors.red.shade900),
            ),
          ),
          if (onRetry != null)
            TextButton(
              onPressed: onRetry,
              child: const Text('RETRY'),
            ),
          if (onDismiss != null)
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: onDismiss,
              iconSize: 20,
              color: Colors.red.shade700,
            ),
        ],
      ),
    );
  }
}
