import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const _categories = [
    (Icons.devices_rounded, 'Electronics'),
    (Icons.checkroom_rounded, 'Fashion'),
    (Icons.chair_rounded, 'Home'),
    (Icons.sports_soccer_rounded, 'Sports'),
  ];

  static const _products = [
    (Icons.headphones_rounded, 'Wireless Headphones', '\$79.99'),
    (Icons.watch_rounded, 'Smart Watch', '\$99.99'),
    (Icons.laptop_mac_rounded, 'MacBook Air M2', '\$1,099.00'),
    (Icons.phone_iphone_rounded, 'iPhone 15', '\$999.00'),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF0B315F),
          foregroundColor: Colors.white,
          title: const Row(children: [Icon(Icons.shopping_bag_rounded), SizedBox(width: 8), Text('ShopEase', style: TextStyle(fontWeight: FontWeight.w700))]),
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined))],
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: 0,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_outlined), selectedIcon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.grid_view_outlined), label: 'Categories'),
            NavigationDestination(icon: Icon(Icons.favorite_outline), label: 'Favorites'),
            NavigationDestination(icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
            NavigationDestination(icon: Icon(Icons.person_outline), label: 'Profile'),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for products...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: const Color(0xFFF2F5F9),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(height: 18),
            Container(
              height: 150,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(color: const Color(0xFF1976D2), borderRadius: BorderRadius.circular(18)),
              child: const Row(children: [Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Summer Sale', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700)), SizedBox(height: 6), Text('Up to 50% Off', style: TextStyle(color: Colors.white)), Spacer(), Text('Shop Now  →', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700))])), Icon(Icons.shopping_bag_rounded, size: 82, color: Color(0xFFFFC857))]),
            ),
            const SizedBox(height: 24),
            const Text('Categories', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xFF102A4D))),
            const SizedBox(height: 12),
            SizedBox(
              height: 92,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: _categories.length,
                separatorBuilder: (_, __) => const SizedBox(width: 12),
                itemBuilder: (_, index) => _CategoryCard(icon: _categories[index].$1, name: _categories[index].$2),
              ),
            ),
            const SizedBox(height: 24),
            const Row(children: [Text('Featured Products', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xFF102A4D))), Spacer(), Text('See All', style: TextStyle(color: Color(0xFF1565C0), fontWeight: FontWeight.w600))]),
            const SizedBox(height: 12),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12, childAspectRatio: .72),
              itemBuilder: (_, index) => _ProductCard(icon: _products[index].$1, name: _products[index].$2, price: _products[index].$3),
            ),
          ],
        ),
      );
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({required this.icon, required this.name});
  final IconData icon;
  final String name;

  @override
  Widget build(BuildContext context) => SizedBox(width: 86, child: Column(children: [Container(width: 58, height: 58, decoration: const BoxDecoration(color: Color(0xFFEAF3FF), shape: BoxShape.circle), child: Icon(icon, color: const Color(0xFF1565C0))), const SizedBox(height: 6), Text(name, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 12))]));
}

class _ProductCard extends StatelessWidget {
  const _ProductCard({required this.icon, required this.name, required this.price});
  final IconData icon;
  final String name;
  final String price;

  @override
  Widget build(BuildContext context) => Card(
        elevation: 0,
        color: const Color(0xFFF8FAFC),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Align(alignment: Alignment.topRight, child: Icon(Icons.favorite_border, color: Colors.red.shade300)), Expanded(child: Center(child: Icon(icon, size: 68, color: const Color(0xFF27374D)))), Text(name, maxLines: 2, overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.w600)), const SizedBox(height: 4), Row(children: [Text(price, style: const TextStyle(fontWeight: FontWeight.w800, color: Color(0xFF0B315F))), const Spacer(), const Icon(Icons.star, size: 15, color: Color(0xFFFFB300)), const Text(' 4.5', style: TextStyle(fontSize: 12))])]),
        ),
      );
}
