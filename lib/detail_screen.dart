import 'package:flutter/material.dart';
import 'package:salad_works/model/salad_works.dart';

class DetailScreen extends StatefulWidget {
  final SaladWorks salad;
  const DetailScreen({super.key, required this.salad});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int cartItemCount = 0;

  final List<String> ingredientImages = [
    'https://picsum.photos/id/429/4128/2322',
    'https://picsum.photos/id/488/1772/1181',
    'https://picsum.photos/id/493/3872/2592',
    'https://picsum.photos/id/674/3888/2592',
    'https://picsum.photos/id/835/5000/3333',
    'https://picsum.photos/id/835/5000/3333',
    'https://picsum.photos/id/835/5000/3333',
    'https://picsum.photos/id/835/5000/3333',
  ];

  void _addToCart() {
    setState(() {
      cartItemCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left_outlined),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Item Details',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, fontFamily: 'Oxygen'),
        ),
        centerTitle: true,
        actions: [
          CartCount(count: cartItemCount),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.network(
                widget.salad.saladImageUrl,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.error),
                loadingBuilder: (context, child, loadingProgress) =>
                    loadingProgress == null
                        ? child
                        : const Center(child: CircularProgressIndicator()),
              ),
              _buildItemDetails(),
              _buildNutritionInfo(),
              _buildIngredients(),
              _buildAddToCartButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItemDetails() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Text(
              widget.salad.name,
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Oxygen'),
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                widget.salad.discountPrice,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    fontFamily: 'Oxygen'),
              ),
              Text(
                widget.salad.saladPrice,
                style: const TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                    fontFamily: 'Oxygen'),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildNutritionInfo() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _NutritionItem(value: widget.salad.calories, label: 'Calories'),
          _NutritionItem(value: widget.salad.protein, label: 'Protein'),
          _NutritionItem(value: widget.salad.carbo, label: 'Carbs'),
          _NutritionItem(value: widget.salad.fat, label: 'Fat'),
        ],
      ),
    );
  }

  Widget _buildIngredients() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Ingredients',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 6,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
            ),
            itemCount: widget.salad.ingredientImageUrls.length,
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(widget.salad.ingredientImageUrls[index],
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.error),
                    loadingBuilder: (context, child, loadingProgress) =>
                        loadingProgress == null
                            ? child
                            : const Center(child: CircularProgressIndicator())),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildAddToCartButton() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: _addToCart,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          backgroundColor: Colors.black,
        ),
        child: const Text(
          "Add to Cart",
          style: TextStyle(
              fontSize: 14.0, color: Colors.white, fontFamily: 'Oxygen'),
        ),
      ),
    );
  }
}

class _NutritionItem extends StatelessWidget {
  final int value;
  final String label;

  const _NutritionItem({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          value.toString(),
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15, fontFamily: 'Oxygen'),
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.grey, fontFamily: 'Oxygen'),
        )
      ],
    );
  }
}

class CartCount extends StatelessWidget {
  final int count;

  const CartCount({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () => _showFeatureNotAvailablePopup(context),
        ),
        if (count > 0)
          Positioned(
            right: 8,
            top: 8,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5),
              ),
              constraints: const BoxConstraints(
                minWidth: 16,
                minHeight: 16,
              ),
              child: Text(
                '$count',
                style: const TextStyle(
                    color: Colors.white, fontSize: 12, fontFamily: 'Oxygen'),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }
}

void _showFeatureNotAvailablePopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          'Fitur Belum Tersedia',
          style: TextStyle(fontFamily: 'Oxygen'),
        ),
        content: const Text(
          'Maaf, fitur ini belum tersedia saat ini.',
          style: TextStyle(fontFamily: 'Oxygen'),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text(
              'OK',
              style: TextStyle(fontFamily: 'Oxygen'),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
