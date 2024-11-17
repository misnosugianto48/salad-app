import 'package:flutter/material.dart';
import 'package:salad_works/detail_screen.dart';
import 'package:salad_works/model/salad_works.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _productExplores(context),
        ],
      ),
    ));
  }
}

Widget _productExplores(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
    child: Column(
      children: [
        const SizedBox(height: 10),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.6,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: saladWorkLists.length,
          itemBuilder: (context, index) {
            final SaladWorks salad = saladWorkLists[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      salad: salad,
                    ),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.network(
                          salad.saladImageUrl,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              const Icon(Icons.error),
                          loadingBuilder: (context, child, loadingProgress) =>
                              loadingProgress == null
                                  ? child
                                  : const Center(
                                      child: CircularProgressIndicator(),
                                    ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 40,
                    child: Text(
                      salad.name,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Oxygen'),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        salad.discountPrice,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13.5,
                            fontFamily: 'Oxygen'),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        salad.saladPrice,
                        style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                            fontFamily: 'Oxygen'),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ],
    ),
  );
}
