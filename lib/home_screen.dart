import 'package:flutter/material.dart';
import 'package:salad_works/detail_screen.dart';
import 'package:salad_works/model/salad_works.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _bannerPhoto(),
            _saladFeatures(context),
            _bestSales(context),
          ],
        ),
      ),
    );
  }
}

Widget _bannerPhoto() {
  return Container(
    margin: const EdgeInsets.all(10.0),
    child: AspectRatio(
      aspectRatio: 16 / 9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Image.asset(
          'images/photo-salad-banner.jpeg',
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}

Widget _saladFeatures(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
    child: Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Salad Features',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Oxygen'),
            ),
            Text(
              'See All',
              style: TextStyle(color: Colors.grey, fontFamily: 'Oxygen'),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: List.generate(
            2,
            (index) {
              final SaladWorks salad = saladWorkLists[index];
              return Expanded(
                child: InkWell(
                  // Pindahkan InkWell ke sini
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
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: index == 0 ? 8.0 : 0.0,
                      left: index == 1 ? 8.0 : 0.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AspectRatio(
                          aspectRatio: 3 / 4,
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
                                loadingBuilder: (context, child,
                                        loadingProgress) =>
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
                  ),
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}

Widget _bestSales(BuildContext context) {
  final List<SaladWorks> salad = saladWorkLists;

  // Get last 4 items
  final lastFourItems =
      salad.length > 4 ? salad.sublist(salad.length - 4) : salad;

  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      children: <Widget>[
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Best Sales',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Oxygen'),
            ),
            Text(
              'See All',
              style: TextStyle(color: Colors.grey, fontFamily: 'Oxygen'),
            ),
          ],
        ),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: lastFourItems
                .map((item) => InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(
                              salad: item,
                            ),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(3.0),
                              child: Image.network(
                                item.saladImageUrl,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) =>
                                    const Icon(Icons.error),
                                loadingBuilder: (context, child,
                                        loadingProgress) =>
                                    loadingProgress == null
                                        ? child
                                        : const Center(
                                            child: CircularProgressIndicator(),
                                          ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ConstrainedBox(
                                constraints: const BoxConstraints(
                                  maxWidth: 150,
                                ),
                                child: Text(
                                  item.name,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontFamily: 'Oxygen'),
                                  softWrap: true,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    item.discountPrice,
                                    style: const TextStyle(
                                      fontSize: 13.5,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Oxygen',
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    item.saladPrice,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                      fontFamily: 'Oxygen',
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ))
                .toList(),
          ),
        )
      ],
    ),
  );
}
