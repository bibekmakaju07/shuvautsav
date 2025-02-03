import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/app_route/app_delegate.dart';
import 'package:shuvautsavapp/app/loading/loading_indicator.dart';
import 'package:shuvautsavapp/app/view/app.dart';
import 'package:shuvautsavapp/features/product/model/review_product_controller.dart';

class RatingAndReviewWidget extends ConsumerStatefulWidget {
  const RatingAndReviewWidget({
    super.key,
    required this.slug,
  });
  final String slug;

  @override
  ConsumerState<RatingAndReviewWidget> createState() =>
      _RatingAndReviewWidgetState();
}

class _RatingAndReviewWidgetState extends ConsumerState<RatingAndReviewWidget> {
  double _currentRating = 0;
  final TextEditingController _reviewController = TextEditingController();

  @override
  void dispose() {
    _reviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(storeReviewProvider, (prev, next) {
      next.maybeWhen(
        orElse: () {},
        loading: (loading, data) {
          if (loading) {
            LoadingIndicator.instance.show(context);
          } else {
            LoadingIndicator.instance.hide();
          }
        },
        error: (data, extra) {
          ref.read(toastProvider.notifier).update((_) {
            return (
              title: 'Something went wrong',
              description: '',
              id: '1212',
              error: true,
            );
          });
        },
        success: (data, extra) {
          ref.read(toastProvider.notifier).update((_) {
            return (
              title: data.data.message,
              description: '',
              id: '1212',
              error: false,
            );
          });
          ref.pop();
        },
      );
    });
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      // margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Rate the Product',
              style: context.titleMedium,
            ),
            const SizedBox(height: 8),
            RatingBar.builder(
              initialRating: _currentRating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                setState(() {
                  _currentRating = rating;
                });
              },
            ),
            const SizedBox(height: 16),
            Text(
              'Write a Review',
              style: context.titleMedium,
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _reviewController,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'Share your thoughts about the product...',
                hintStyle: context.titleSmall,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (_currentRating > 0 && _reviewController.text.isNotEmpty) {
                  ref.read(storeReviewProvider.notifier).storeReview(params: {
                    'score': "$_currentRating",
                    'review': _reviewController.text

                  },
                  slug: widget.slug
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please provide a rating and/or review!'),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Submit',
                style: context.titleMedium.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
