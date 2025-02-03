import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/features/product/model/product_details_model.dart';
import 'package:shuvautsavapp/features/product/views/product_details.dart';

class ReviewListWidget extends ConsumerStatefulWidget {
  const ReviewListWidget({super.key, required this.data});

  final ApiResponse data;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ReviewListWidgetState();
}

class _ReviewListWidgetState extends ConsumerState<ReviewListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: (widget.data.allReviews.isEmpty)
          ? Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 16,
              ),
              child: Text(
                'No review found for product',
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: widget.data.allReviews.map((e) {
                  return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    margin: const EdgeInsets.only(bottom: 16),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.deepPurple.shade100,
                                child: Text(
                                  e.name[0].toUpperCase(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e.name,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      maskEmail(e.email),
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: List.generate(
                                  5,
                                  (i) => Icon(
                                    i < (int.tryParse(e.rating) ?? 0)
                                        ? Icons.star
                                        : Icons.star_border,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Text(
                            e.review,
                            style: const TextStyle(fontSize: 14),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Reviewed on: ${e.reviewDate}',
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
    );
  }
}
