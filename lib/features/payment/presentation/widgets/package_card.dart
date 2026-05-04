import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sep490_mo/features/payment/data/models/payment_models.dart';

class PackageCard extends HookWidget {
  final Payment package;
  final Future<String?> Function(Payment) onCreatePayment;

  const PackageCard({
    super.key,
    required this.package,
    required this.onCreatePayment,
  });

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: Text(package.packageName),
        subtitle: Text(package.description),
        trailing: isLoading.value
            ? const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : Text(
                '\$${package.price.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
        onTap: isLoading.value
            ? null
            : () async {
                isLoading.value = true;
                final url = await onCreatePayment(package);

                if (!context.mounted) return;

                if (url != null) {
                  final uri = Uri.parse(url);
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  } else {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Could not launch $url')),
                      );
                    }
                  }
                } else {
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Failed to create payment link.')),
                    );
                  }
                }
                isLoading.value = false;
              },
      ),
    );
  }
}
