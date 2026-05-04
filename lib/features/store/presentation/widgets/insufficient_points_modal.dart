import 'package:flutter/material.dart';
import 'package:sep490_mo/app/router/routes.dart';

class InsufficientPointsModal extends StatelessWidget {
  const InsufficientPointsModal({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.monetization_on, size: 64, color: Colors.amber),
          const SizedBox(height: 16),
          const Text(
            'Insufficient Points',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'You do not have enough points to complete this action. Purchase more point packages to continue.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            const PaymentRoute().push(context);
          },
          child: const Text('View Packages'),
        ),
      ],
    );
  }
}
