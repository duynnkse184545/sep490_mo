import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/core/widgets/loader.dart';

class SignUpSuccessWidget extends HookWidget {
  const SignUpSuccessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Auto-navigate after success
    useEffect(() {
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushReplacementNamed(context, '/home');
      });
      return null;
    }, []);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.check_circle, size: 80, color: AppColors.success),
          const SizedBox(height: 24),
          Text(
            'Account Created!',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Welcome aboard! Redirecting...',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 32),
          const SmallLoader(),
        ],
      ),
    );
  }
}
