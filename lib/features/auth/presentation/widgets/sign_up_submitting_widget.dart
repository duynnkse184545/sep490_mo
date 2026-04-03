import 'package:flutter/material.dart';
import 'package:sep490_mo/core/widgets/loader.dart';
import 'package:sep490_mo/features/auth/presentation/states/sign_up_state.dart';

class SignUpSubmittingWidget extends StatelessWidget {
  final SignUpForm form;

  const SignUpSubmittingWidget({
    super.key,
    required this.form,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Loader(),
          const SizedBox(height: 24),
          Text(
            'Creating your account...',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 8),
          Text(
            'Please wait',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
