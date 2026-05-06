import 'package:flutter/material.dart';
import 'package:sep490_mo/core/theme/app_colors.dart';
import 'package:sep490_mo/features/store/data/models/item_models.dart';

class PurchaseModal extends StatelessWidget {
  final ShopItem item;
  final int userPoints;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  const PurchaseModal({
    super.key,
    required this.item,
    required this.userPoints,
    required this.onConfirm,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    final bool canAfford = userPoints >= item.price;

    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.border, width: 2),
          boxShadow: const [
            BoxShadow(color: AppColors.border, offset: Offset(8, 8)),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3F3F6),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: item.imageUrl != null 
                      ? Image.network(item.imageUrl!, fit: BoxFit.cover)
                      : const Icon(Icons.inventory_2, size: 48, color: Colors.grey),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.itemName.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF323232),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          item.description ?? 'A unique item for your collection.',
                          style: const TextStyle(fontSize: 13, color: Colors.black54, height: 1.4),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  color: const Color(0xFF323232),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.border, width: 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("PRICE", style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w900, fontSize: 12)),
                    Text(
                      "${item.price} PTS",
                      style: TextStyle(
                        color: canAfford ? const Color(0xFF75FBC0) : Colors.redAccent,
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _buildModalBtn("CANCEL", onCancel, isPrimary: false),
                  const SizedBox(width: 16),
                  if (canAfford) 
                    _buildModalBtn("CONFIRM PURCHASE", onConfirm, isPrimary: true),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildModalBtn(String label, VoidCallback onTap, {required bool isPrimary}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: isPrimary ? AppColors.primary : Colors.white,
          border: Border.all(color: AppColors.border, width: 2),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(color: AppColors.border, offset: const Offset(3, 3)),
          ],
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isPrimary ? Colors.white : const Color(0xFF323232), 
            fontWeight: FontWeight.w900,
            fontSize: 12,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}
