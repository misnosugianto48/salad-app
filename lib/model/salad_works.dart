class SaladWorks {
  String name;
  String saladPrice;
  String discountPrice;
  int calories;
  int protein;
  int carbo;
  int fat;

  String saladImageUrl;
  List<String> ingredientImageUrls;

  SaladWorks({
    required this.name,
    required this.saladPrice,
    required this.discountPrice,
    required this.calories,
    required this.protein,
    required this.carbo,
    required this.fat,
    required this.saladImageUrl,
    required this.ingredientImageUrls,
  });

  get length => null;
}

var saladWorkLists = [
  SaladWorks(
    name: 'Spring Asparagus Salad',
    saladPrice: '\$85.00',
    discountPrice: '\$75.00',
    calories: 358,
    protein: 38,
    carbo: 35,
    fat: 20,
    saladImageUrl:
        'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ingredientImageUrls: [
      'https://picsum.photos/id/429/4128/2322',
      'https://picsum.photos/id/488/1772/1181',
      'https://picsum.photos/id/493/3872/2592',
      'https://picsum.photos/id/674/3888/2592',
      'https://picsum.photos/id/835/5000/3333',
    ],
  ),
  SaladWorks(
    name: 'Crunch Salad',
    saladPrice: '\$78.00',
    discountPrice: '\$76.00',
    calories: 355,
    protein: 45,
    carbo: 34,
    fat: 26,
    saladImageUrl:
        'https://images.unsplash.com/photo-1490645935967-10de6ba17061?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8c2FsYWR8ZW58MHwwfDB8fHww',
    ingredientImageUrls: [
      'https://picsum.photos/id/674/3888/2592',
      'https://picsum.photos/id/835/5000/3333',
      'https://plus.unsplash.com/premium_photo-1722686445127-fe07327fe7a7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW5ncmVkaWVudHxlbnwwfDB8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1524593564501-fd747698ddf7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aW5ncmVkaWVudHxlbnwwfDB8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1454944338482-a69bb95894af?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aW5ncmVkaWVudHxlbnwwfDB8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1471113082645-fde63c139087?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGluZ3JlZGllbnR8ZW58MHwwfDB8fHww',
    ],
  ),
  SaladWorks(
    name: 'Fish Toko Salad',
    saladPrice: '\$98.00',
    discountPrice: '\$75.00',
    calories: 378,
    protein: 45,
    carbo: 36,
    fat: 27,
    saladImageUrl:
        'https://images.unsplash.com/photo-1514516345957-556ca7d90a29?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fHNhbGFkfGVufDB8MHwwfHx8MA%3D%3D',
    ingredientImageUrls: [
      'https://picsum.photos/id/429/4128/2322',
      'https://picsum.photos/id/488/1772/1181',
      'https://picsum.photos/id/674/3888/2592',
      'https://images.unsplash.com/photo-1697385047177-bab50909c958?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fGluZ3JlZGllbnR8ZW58MHwwfDB8fHww',
      'https://images.unsplash.com/photo-1610210143623-417eda0cca0e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fGluZ3JlZGllbnR8ZW58MHwwfDB8fHww'
    ],
  ),
  SaladWorks(
    name: 'Harvest Salad',
    saladPrice: '\$88.00',
    discountPrice: '\$82.00',
    calories: 402,
    protein: 39,
    carbo: 35,
    fat: 27,
    saladImageUrl:
        'https://images.unsplash.com/photo-1599345585307-91babe6535a3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDF8fHNhbGFkfGVufDB8MHwwfHx8MA%3D%3D',
    ingredientImageUrls: [
      'https://images.unsplash.com/photo-1697385047177-bab50909c958?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fGluZ3JlZGllbnR8ZW58MHwwfDB8fHww',
      'https://images.unsplash.com/photo-1610210143623-417eda0cca0e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fGluZ3JlZGllbnR8ZW58MHwwfDB8fHww',
      'https://images.unsplash.com/photo-1615368688859-6aaf9e7169f7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDB8fGluZ3JlZGllbnR8ZW58MHwwfDB8fHww',
      'https://images.unsplash.com/photo-1594813597068-ee1090116784?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzV8fGluZ3JlZGllbnR8ZW58MHwwfDB8fHww'
    ],
  ),
  SaladWorks(
    name: 'Spinach Salad',
    saladPrice: '\$88.00',
    discountPrice: '\$75.89',
    calories: 456,
    protein: 38,
    carbo: 43,
    fat: 32,
    saladImageUrl:
        'https://images.unsplash.com/photo-1524440279614-c67ab5a0ab56?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDB8fHNhbGFkfGVufDB8MHwwfHx8MA%3D%3D',
    ingredientImageUrls: [
      'https://images.unsplash.com/photo-1615368688859-6aaf9e7169f7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDB8fGluZ3JlZGllbnR8ZW58MHwwfDB8fHww',
      'https://images.unsplash.com/photo-1594813597068-ee1090116784?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzV8fGluZ3JlZGllbnR8ZW58MHwwfDB8fHww',
      'https://picsum.photos/id/488/1772/1181',
      'https://picsum.photos/id/493/3872/2592',
    ],
  ),
  SaladWorks(
    name: 'Guacamole Greens Salad',
    saladPrice: '\$89.00',
    discountPrice: '\$76.00',
    calories: 452,
    protein: 34,
    carbo: 43,
    fat: 31,
    saladImageUrl:
        'https://images.unsplash.com/photo-1523986371872-9d3ba2e2a389?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTd8fHNhbGFkfGVufDB8MHwwfHx8MA%3D%3D',
    ingredientImageUrls: [
      'https://images.unsplash.com/photo-1517260739337-6799d239ce83?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGluZ3JlZGllbnR8ZW58MHwwfDB8fHww',
      'https://images.unsplash.com/photo-1594813597068-ee1090116784?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzV8fGluZ3JlZGllbnR8ZW58MHwwfDB8fHww',
      'https://picsum.photos/id/429/4128/2322',
      'https://picsum.photos/id/488/1772/1181',
      'https://picsum.photos/id/493/3872/2592',
      'https://picsum.photos/id/674/3888/2592',
    ],
  ),
  SaladWorks(
    name: 'Fish Salad',
    saladPrice: '\$76.00',
    discountPrice: '\$74.00',
    calories: 546,
    protein: 34,
    carbo: 36,
    fat: 32,
    saladImageUrl:
        'https://plus.unsplash.com/premium_photo-1723795207870-b6ada4969fef?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZmlzaCUyMHNhbGFkfGVufDB8MHwwfHx8MA%3D%3D',
    ingredientImageUrls: [
      'https://picsum.photos/id/429/4128/2322',
      'https://picsum.photos/id/488/1772/1181',
      'https://images.unsplash.com/photo-1470549813517-2fa741d25c92?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aW5ncmVkaWVudHxlbnwwfDB8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1517260739337-6799d239ce83?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGluZ3JlZGllbnR8ZW58MHwwfDB8fHww',
      'https://images.unsplash.com/photo-1594813597068-ee1090116784?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzV8fGluZ3JlZGllbnR8ZW58MHwwfDB8fHww',
    ],
  ),
  SaladWorks(
    name: 'Avocado Salad',
    saladPrice: '\$98.00',
    discountPrice: '\$87.00',
    calories: 542,
    protein: 32,
    carbo: 34,
    fat: 27,
    saladImageUrl:
        'https://plus.unsplash.com/premium_photo-1701006579408-10e1bb57277b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGluZ3JlZGllbnQlMjBmaXNoJTIwc2FsYWR8ZW58MHwwfDB8fHww',
    ingredientImageUrls: [
      'https://picsum.photos/id/429/4128/2322',
      'https://picsum.photos/id/488/1772/1181',
      'https://images.unsplash.com/photo-1470549813517-2fa741d25c92?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aW5ncmVkaWVudHxlbnwwfDB8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1517260739337-6799d239ce83?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGluZ3JlZGllbnR8ZW58MHwwfDB8fHww',
      'https://images.unsplash.com/photo-1594813597068-ee1090116784?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzV8fGluZ3JlZGllbnR8ZW58MHwwfDB8fHww',
    ],
  ),
];
