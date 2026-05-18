import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const ShoopInApp());
}

class ShoopInApp extends StatelessWidget {
  const ShoopInApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoop.In',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF9E2A2B)),
      ),
      home: const LoginPage(),
    );
  }
}

class Product {
  final String name;
  final String price;
  final String category;
  final String image;
  final String store;
  final String delivery;
  final String description;
  final bool isHotSale;

  const Product({
    required this.name,
    required this.price,
    required this.category,
    required this.image,
    required this.store,
    required this.delivery,
    required this.description,
    this.isHotSale = false,
  });
}

const List<Product> products = [
  // ── MEN ────────────────────────────────────────────────────────
  Product(
    name: 'Julius Marlow Leather Chelsea Boot',
    isHotSale: true,
    price: r'$129.95',
    category: 'Men',
    image: 'assets/images/brown_boot.jpg',
    store: 'Rebel Sport',
    delivery: 'Free delivery',
    description: 'Premium brown leather Chelsea boot for formal and casual wear.',
  ),
  Product(
    name: 'Adidas Handball Spezial',
    price: r'$170.00',
    category: 'Men',
    image: 'assets/images/adidas_spezial.jpg',
    store: 'Adidas',
    delivery: 'Standard delivery',
    description: 'Classic Adidas Spezial in cream suede with black three stripes and gum sole.',
  ),
  Product(
    name: 'Nike Revolution 7 Men Black',
    price: r'$127.96',
    category: 'Men',
    image: 'assets/images/nike_black.jpg',
    store: 'Rebel Sport',
    delivery: 'Free delivery',
    description: 'Nike Revolution 7 men\'s running shoe in all-black with responsive cushioning.',
  ),
  Product(
    name: 'Nike ReactX Infinity Run 4 Orange',
    isHotSale: true,
    price: r'$219.99',
    category: 'Men',
    image: 'assets/images/nikestructure.jpg',
    store: 'Nike',
    delivery: 'Free delivery',
    description: 'Nike ReactX Infinity Run 4 in Total Orange with ReactX foam for maximum cushioning.',
  ),
  Product(
    name: 'Converse Chuck Taylor All Star Hi Black',
    price: r'$89.99',
    category: 'Men',
    image: 'assets/images/converse.jpg',
    store: 'Converse',
    delivery: 'Standard delivery',
    description: 'Converse Chuck Taylor All Star Hi in black monochrome — the timeless classic.',
  ),
  Product(
    name: 'Men\'s Brown Oxford Wingtip Brogue',
    price: r'$159.99',
    category: 'Men',
    image: 'assets/images/men.jpg',
    store: 'Myer',
    delivery: 'Free delivery',
    description: 'Formal brown leather Oxford with wingtip brogue detailing for dress occasions.',
  ),
  Product(
    name: 'Men\'s Blue Leather Casual Sneaker',
    price: r'$119.99',
    category: 'Men',
    image: 'assets/images/run.jpg',
    store: 'Rebel Sport',
    delivery: 'Delivery available',
    description: 'Perforated navy blue suede casual sneaker with white sole, lightweight comfort.',
  ),
  // ── WOMEN ──────────────────────────────────────────────────────
  Product(
    name: 'HOKA Clifton 9 Black',
    isHotSale: true,
    price: r'$189.99',
    category: 'Women',
    image: 'assets/images/hoka_black.webp',
    store: 'Rebel Sport',
    delivery: 'Free delivery',
    description: 'HOKA Clifton 9 in black/white — ultra-cushioned daily running shoe.',
  ),
  Product(
    name: 'Nike Court Vision Low White',
    price: r'$89.99',
    category: 'Women',
    image: 'assets/images/nike_white.jpg',
    store: 'Nike',
    delivery: 'Delivery available',
    description: 'Nike Court Vision Low in triple white — clean leather lifestyle sneaker.',
  ),
  Product(
    name: 'Adidas Grand Court 2.0 White',
    isHotSale: true,
    price: r'$110.00',
    category: 'Women',
    image: 'assets/images/adidas_white.jpg',
    store: 'Adidas',
    delivery: 'Free delivery',
    description: 'Adidas Grand Court 2.0 in off-white — minimal court style for everyday wear.',
  ),
  Product(
    name: 'Nike Revolution 7 Women Purple',
    price: r'$109.99',
    category: 'Women',
    image: 'assets/images/Revolution.jpg',
    store: 'Nike',
    delivery: 'Free delivery',
    description: 'Nike Revolution 7 women\'s in lilac/blue — lightweight everyday runner.',
  ),
  Product(
    name: 'Lorella Black Wedge Loafer',
    price: r'$79.99',
    category: 'Women',
    image: 'assets/images/lorella.jpg',
    store: 'Lorella',
    delivery: 'Free delivery',
    description: 'Lorella black wedge loafer in smooth PU leather — professional and comfortable.',
  ),
  Product(
    name: 'Women\'s White Floral Perforated Slip-On',
    price: r'$69.99',
    category: 'Women',
    image: 'assets/images/women.jpeg',
    store: 'Skechers',
    delivery: 'Standard delivery',
    description: 'White slip-on flat with floral laser-cut perforations — lightweight and breathable.',
  ),
  Product(
    name: 'Nike Air Max 270 React ENG White',
    price: r'$199.99',
    category: 'Women',
    image: 'assets/images/fav.jpg',
    store: 'Nike',
    delivery: 'Free delivery',
    description: 'Nike Air Max 270 React ENG in all-white — Air Max heel unit with React foam forefoot.',
  ),
  Product(
    name: 'Famous Footwear Camel Chain Loafer',
    isHotSale: true,
    price: r'$129.99',
    category: 'Women',
    image: 'assets/images/famous.jpg',
    store: 'Famous Footwear',
    delivery: 'Standard delivery',
    description: 'Camel suede platform loafer with chunky chain detail and white lug sole.',
  ),
  // ── KIDS ───────────────────────────────────────────────────────
  Product(
    name: 'Nike Revolution 7 FlyEase Kids Teal',
    price: r'$59.99',
    category: 'Kids',
    image: 'assets/images/kids_nike.webp',
    store: 'Nike',
    delivery: 'Delivery available',
    description: 'Nike Revolution 7 FlyEase kids in teal/green — easy on/off strap for active kids.',
  ),
  Product(
    name: 'Nike Kids Pastel High-Top Sneaker',
    isHotSale: true,
    price: r'$74.99',
    category: 'Kids',
    image: 'assets/images/nikekids.jpg',
    store: 'Nike',
    delivery: 'Free delivery',
    description: 'Nike kids high-top in pastel purple/mint/pink with velcro strap closure.',
  ),
  Product(
    name: 'Spider-Man Light-Up Sneaker',
    price: r'$54.99',
    category: 'Kids',
    image: 'assets/images/spider.jpg',
    store: 'Target',
    delivery: 'Free delivery',
    description: 'Spider-Man themed kids sneaker with light-up sole and velcro strap.',
  ),
  Product(
    name: 'Baby Winter Booties Pink Bear',
    isHotSale: true,
    price: r'$29.99',
    category: 'Kids',
    image: 'assets/images/winter.jpg',
    store: 'Baby Bunting',
    delivery: 'Standard delivery',
    description: 'Soft pink knit baby booties with cute bear face embroidery — warm and cosy.',
  ),
  Product(
    name: 'Baby Unicorn Canvas Sneaker Pink',
    price: r'$24.99',
    category: 'Kids',
    image: 'assets/images/baby.jpg',
    store: 'Baby Bunting',
    delivery: 'Standard delivery',
    description: 'Pink baby canvas sneaker with unicorn print laces — soft sole for first walkers.',
  ),
  Product(
    name: 'Disney Rapunzel Princess Sneaker',
    price: r'$44.99',
    category: 'Kids',
    image: 'assets/images/barbi.jpg',
    store: 'Target',
    delivery: 'Free delivery',
    description: 'Disney Rapunzel purple sneaker with bow detail and velcro strap for little girls.',
  ),
  Product(
    name: 'Kids Green Canvas Velcro Sneaker',
    price: r'$34.99',
    category: 'Kids',
    image: 'assets/images/green.jpg',
    store: 'Target',
    delivery: 'Free delivery',
    description: 'Bright green canvas sneaker with double velcro straps — easy for kids to wear.',
  ),
];

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  void login(BuildContext context) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const MainPage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleTopBar(),
      body: Center(
        child: SizedBox(
          width: 340,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('LOGIN', style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
              const SizedBox(height: 35),
              const Align(alignment: Alignment.centerLeft, child: Text('Email')),
              const SizedBox(height: 6),
              TextField(decoration: InputDecoration(filled: true, fillColor: const Color(0xFF9E2A2B), border: OutlineInputBorder(borderRadius: BorderRadius.circular(6), borderSide: BorderSide.none))),
              const SizedBox(height: 18),
              const Align(alignment: Alignment.centerLeft, child: Text('Password')),
              const SizedBox(height: 6),
              TextField(obscureText: true, decoration: InputDecoration(filled: true, fillColor: const Color(0xFF9E2A2B), border: OutlineInputBorder(borderRadius: BorderRadius.circular(6), borderSide: BorderSide.none))),
              const SizedBox(height: 14),
              const Text("Don't have an account? Sign up."),
              const SizedBox(height: 14),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF9E2A2B), foregroundColor: Colors.white),
                onPressed: () => login(context),
                child: const Text('LOGIN'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SimpleTopBar extends StatelessWidget implements PreferredSizeWidget {
  const SimpleTopBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(70);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 1,
      title: Image.asset('assets/images/shoop_in_logo.jpg', height: 55, fit: BoxFit.contain),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int pageIndex = 0;
  String selectedCategory = 'Home';
  String searchText = '';
  final List<Product> cart = [];
  final List<Product> compare = [];

  // Filter state
  double _minPrice = 0;
  double _maxPrice = 300;
  bool _hotSaleOnly = false;
  String _selectedStore = 'All';

  int get _activeFilters {
    int count = 0;
    if (_minPrice > 0 || _maxPrice < 300) count++;
    if (_hotSaleOnly) count++;
    if (_selectedStore != 'All') count++;
    return count;
  }

  List<String> get _allStores {
    final stores = products.map((p) => p.store).toSet().toList();
    stores.sort();
    return ['All', ...stores];
  }

  void _openFilterSheet() {
    double tempMin = _minPrice;
    double tempMax = _maxPrice;
    bool tempHotSale = _hotSaleOnly;
    String tempStore = _selectedStore;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) => StatefulBuilder(
        builder: (context, setModalState) => Padding(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                const Text('Filter', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    setModalState(() { tempMin = 0; tempMax = 300; tempHotSale = false; tempStore = 'All'; });
                  },
                  child: const Text('Reset', style: TextStyle(color: Colors.red)),
                ),
              ]),
              const Divider(),
              const Text('Price Range', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              const SizedBox(height: 8),
              Row(children: [
                Text('\$${tempMin.toInt()}', style: const TextStyle(color: Color(0xFF9E2A2B), fontWeight: FontWeight.bold)),
                const Spacer(),
                Text('\$${tempMax.toInt()}', style: const TextStyle(color: Color(0xFF9E2A2B), fontWeight: FontWeight.bold)),
              ]),
              RangeSlider(
                values: RangeValues(tempMin, tempMax),
                min: 0, max: 300,
                divisions: 30,
                activeColor: const Color(0xFF9E2A2B),
                onChanged: (values) => setModalState(() { tempMin = values.start; tempMax = values.end; }),
              ),
              const SizedBox(height: 8),
              const Text('Store', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8, runSpacing: 8,
                children: _allStores.map((store) {
                  final selected = tempStore == store;
                  return GestureDetector(
                    onTap: () => setModalState(() => tempStore = store),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: selected ? const Color(0xFF9E2A2B) : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(store, style: TextStyle(color: selected ? Colors.white : Colors.black, fontSize: 12)),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 12),
              Row(children: [
                const Text('Hot Sale Only', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const Spacer(),
                Switch(
                  value: tempHotSale,
                  activeColor: const Color(0xFF9E2A2B),
                  onChanged: (v) => setModalState(() => tempHotSale = v),
                ),
              ]),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity, height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF9E2A2B), foregroundColor: Colors.white),
                  onPressed: () {
                    setState(() {
                      _minPrice = tempMin;
                      _maxPrice = tempMax;
                      _hotSaleOnly = tempHotSale;
                      _selectedStore = tempStore;
                    });
                    Navigator.pop(context);
                  },
                  child: const Text('Apply Filters', style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Product> get visibleProducts {
    List<Product> result = products;
    if (selectedCategory != 'Home') result = result.where((p) => p.category == selectedCategory).toList();
    if (searchText.isNotEmpty) result = result.where((p) => p.name.toLowerCase().contains(searchText.toLowerCase())).toList();
    // Apply filters
    result = result.where((p) {
      final price = double.tryParse(p.price.replaceAll(r'$', '')) ?? 0;
      if (price < _minPrice || price > _maxPrice) return false;
      if (_hotSaleOnly && !p.isHotSale) return false;
      if (_selectedStore != 'All' && p.store != _selectedStore) return false;
      return true;
    }).toList();
    return result;
  }

  void addToCart(Product product) {
    setState(() { cart.add(product); pageIndex = 1; });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${product.name} added to cart'), duration: const Duration(seconds: 1)));
  }

  void addToCompare(Product product) {
    if (compare.contains(product)) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('This shoe is already selected. Please choose another shoe.'), duration: Duration(seconds: 2)));
      return;
    }
    if (compare.isEmpty) {
      setState(() { compare.add(product); });
      showDialog(context: context, builder: (context) => AlertDialog(
        title: const Text('Compare Shoe'),
        content: Text('${product.name} added.\n\nPlease add one more shoe to compare.'),
        actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text('OK'))],
      ));
      return;
    }
    if (compare.length == 1) {
      setState(() { compare.add(product); });
      Navigator.push(context, MaterialPageRoute(builder: (_) => ComparePage(compareProducts: List<Product>.from(compare), onAddToCart: addToCart)));
      return;
    }
    setState(() { compare.clear(); compare.add(product); });
    showDialog(context: context, builder: (context) => AlertDialog(
      title: const Text('New Comparison Started'),
      content: Text('${product.name} added.\n\nPlease add one more shoe to compare.'),
      actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text('OK'))],
    ));
  }

  void removeFromCompare(Product product) => setState(() => compare.remove(product));
  void clearCompare() => setState(() => compare.clear());

  void openCompareResult() {
    if (compare.length < 2) { ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please add at least 2 shoes to compare'))); return; }
    Navigator.push(context, MaterialPageRoute(builder: (_) => ComparePage(compareProducts: compare, onAddToCart: addToCart)));
  }

  void openProduct(Product product) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.red.withOpacity(0.85),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(22))),
      builder: (_) => ProductPopup(
        product: product,
        onAddToCart: () { Navigator.pop(context); addToCart(product); },
        onCompare: () { Navigator.pop(context); addToCompare(product); },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      buildHomePage(),
      CartPage(cartProducts: cart),
      ComparisonListPage(compareProducts: compare, onRemove: removeFromCompare, onClear: clearCompare, onCompareNow: openCompareResult, onAddToCart: addToCart),
      const ProfilePage(),
    ];
    return Scaffold(
      appBar: const SimpleTopBar(),
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        selectedItemColor: const Color(0xFF9E2A2B),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: (index) => setState(() => pageIndex = index),
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Badge(label: Text(cart.length.toString()), child: const Icon(Icons.shopping_cart)), label: 'Cart'),
          BottomNavigationBarItem(icon: Badge(label: Text(compare.length.toString()), child: const Icon(Icons.compare_arrows)), label: 'Compare'),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget buildHomePage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(child: SearchBarBox(onChanged: (value) => setState(() => searchText = value))),
            Container(
              margin: const EdgeInsets.only(right: 10, bottom: 12, top: 8),
              child: IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: const Color(0xFF9E2A2B),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                ),
                icon: Stack(
                  children: [
                    const Icon(Icons.tune, color: Colors.white),
                    if (_activeFilters > 0)
                      Positioned(
                        right: 0, top: 0,
                        child: Container(
                          width: 8, height: 8,
                          decoration: const BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
                        ),
                      ),
                  ],
                ),
                onPressed: _openFilterSheet,
              ),
            ),
          ],
        ),
        if (selectedCategory == 'Home') ...[
          const Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('Categories', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(children: ['Kids', 'Women', 'Men'].map((cat) => Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black, foregroundColor: Colors.white),
                onPressed: () => setState(() => selectedCategory = cat),
                child: Text(cat),
              ),
            )).toList()),
          ),
          const SizedBox(height: 12),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: 110,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade300),
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 8, offset: const Offset(0, 3))],
            ),
            child: ClipRRect(borderRadius: BorderRadius.circular(12), child: Image.asset('assets/images/special.jpg', fit: BoxFit.cover)),
          ),
          const SizedBox(height: 12),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('Features', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        ] else ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(children: [
              TextButton(onPressed: () => setState(() => selectedCategory = 'Home'), child: const Text('Home')),
              Text(selectedCategory, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ]),
          ),
        ],
        Expanded(child: ProductGrid(products: visibleProducts, onProductTap: openProduct, onAddToCart: addToCart, onCompare: addToCompare)),
      ],
    );
  }
}

class SearchBarBox extends StatelessWidget {
  final Function(String) onChanged;
  const SearchBarBox({super.key, required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 12),
      child: TextField(
        onChanged: onChanged,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: 'Search.........',
          hintStyle: const TextStyle(color: Colors.white),
          prefixIcon: const Icon(Icons.search, color: Colors.black),
          filled: true,
          fillColor: const Color(0xFF9E2A2B),
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6), borderSide: BorderSide.none),
        ),
      ),
    );
  }
}

class ProductGrid extends StatelessWidget {
  final List<Product> products;
  final Function(Product) onProductTap;
  final Function(Product) onAddToCart;
  final Function(Product) onCompare;
  const ProductGrid({super.key, required this.products, required this.onProductTap, required this.onAddToCart, required this.onCompare});

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) return const Center(child: Text('No products found'));
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 220, childAspectRatio: 0.62, crossAxisSpacing: 12, mainAxisSpacing: 12),
      itemBuilder: (context, index) {
        final product = products[index];
        return InkWell(
          onTap: () => onProductTap(product),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(color: Colors.grey.shade100, border: Border.all(color: Colors.grey.shade300), borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Center(child: Image.asset(product.image, fit: BoxFit.contain)),
                      if (product.isHotSale)
                        Positioned(
                          top: 0, left: 0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.local_fire_department, color: Colors.white, size: 12),
                                SizedBox(width: 2),
                                Text('HOT', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                Text(product.name, maxLines: 2, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                Text('Available at: ${product.store}', maxLines: 1, style: const TextStyle(fontSize: 11)),
                Text(product.price, style: const TextStyle(fontSize: 13, color: Colors.red, fontWeight: FontWeight.bold)),
                Text(product.delivery, style: const TextStyle(fontSize: 11, color: Colors.green)),
                const SizedBox(height: 5),
                Row(children: [
                  Expanded(child: ElevatedButton(
                    style: ElevatedButton.styleFrom(padding: EdgeInsets.zero, backgroundColor: const Color(0xFF9E2A2B), foregroundColor: Colors.white),
                    onPressed: () => onAddToCart(product),
                    child: const Text('Cart', style: TextStyle(fontSize: 11)),
                  )),
                  const SizedBox(width: 5),
                  Expanded(child: OutlinedButton(
                    style: OutlinedButton.styleFrom(padding: EdgeInsets.zero),
                    onPressed: () => onCompare(product),
                    child: const Text('Compare', style: TextStyle(fontSize: 10)),
                  )),
                ]),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ProductPopup extends StatelessWidget {
  final Product product;
  final VoidCallback onAddToCart;
  final VoidCallback onCompare;
  const ProductPopup({super.key, required this.product, required this.onAddToCart, required this.onCompare});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(product.name, textAlign: TextAlign.center, style: const TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold)),
            Text(product.price, style: const TextStyle(fontSize: 20, color: Colors.white)),
            const SizedBox(height: 8),
            Text(product.description, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white)),
            const SizedBox(height: 12),
            Text('Available at: ${product.store}', style: const TextStyle(color: Colors.white)),
            Text(product.delivery, style: const TextStyle(color: Colors.white)),
            const SizedBox(height: 16),
            const Align(alignment: Alignment.centerLeft, child: Text('Payment required to order', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
            const PaymentText('AfterPay'),
            const PaymentText('Bank Card'),
            const PaymentText('Latitude Credit Card'),
            const Spacer(),
            Row(children: [
              Expanded(child: ElevatedButton.icon(onPressed: onAddToCart, icon: const Icon(Icons.shopping_cart), label: const Text('Add Cart'))),
              const SizedBox(width: 10),
              Expanded(child: ElevatedButton.icon(onPressed: onCompare, icon: const Icon(Icons.compare_arrows), label: const Text('Compare'))),
            ]),
          ],
        ),
      ),
    );
  }
}

class PaymentText extends StatelessWidget {
  final String text;
  const PaymentText(this.text, {super.key});
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Icon(Icons.check_circle, color: Colors.white, size: 17),
      const SizedBox(width: 8),
      Text(text, style: const TextStyle(color: Colors.white)),
    ]);
  }
}


class _QtyButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const _QtyButton({required this.icon, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: const Color(0xFF9E2A2B),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(icon, color: Colors.white, size: 18),
      ),
    );
  }
}

class CartPage extends StatefulWidget {
  final List<Product> cartProducts;
  const CartPage({super.key, required this.cartProducts});
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final Map<int, int> quantities = {};

  int quantityOf(int index) => quantities[index] ?? 1;

  double get totalPrice {
    double total = 0;
    for (int i = 0; i < widget.cartProducts.length; i++) {
      final price = double.tryParse(widget.cartProducts[i].price.replaceAll(r'$', '')) ?? 0;
      total += price * quantityOf(i);
    }
    return total;
  }

  void removeItem(int index) {
    setState(() {
      widget.cartProducts.removeAt(index);
      quantities.remove(index);
      // re-key quantities above the removed index
      final updated = <int, int>{};
      quantities.forEach((k, v) { if (k > index) updated[k - 1] = v; else if (k < index) updated[k] = v; });
      quantities
        ..clear()
        ..addAll(updated);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Item removed from cart'), duration: Duration(seconds: 1)),
    );
  }

  void increaseQty(int index) => setState(() => quantities[index] = quantityOf(index) + 1);

  void decreaseQty(int index) {
    if (quantityOf(index) <= 1) {
      removeItem(index);
    } else {
      setState(() => quantities[index] = quantityOf(index) - 1);
    }
  }

  void clearCart() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Clear Cart'),
        content: const Text('Remove all items from your cart?'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          TextButton(
            onPressed: () {
              setState(() { widget.cartProducts.clear(); quantities.clear(); });
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Cart cleared'), duration: Duration(seconds: 1)));
            },
            child: const Text('Clear All', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchBarBox(onChanged: (_) {}),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Row(children: [
            const Text('Cart', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Spacer(),
            if (widget.cartProducts.isNotEmpty)
              TextButton.icon(
                onPressed: clearCart,
                icon: const Icon(Icons.delete_sweep, color: Colors.red, size: 20),
                label: const Text('Clear All', style: TextStyle(color: Colors.red)),
              ),
          ]),
        ),
        Expanded(
          child: widget.cartProducts.isEmpty
              ? const Center(
                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(Icons.shopping_cart_outlined, size: 80, color: Colors.grey),
                    SizedBox(height: 16),
                    Text('Your cart is empty', style: TextStyle(fontSize: 20, color: Colors.grey)),
                    SizedBox(height: 8),
                    Text('Add shoes to get started!', style: TextStyle(fontSize: 14, color: Colors.grey)),
                  ]),
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: widget.cartProducts.length,
                  itemBuilder: (context, index) {
                    final p = widget.cartProducts[index];
                    return Dismissible(
                      key: Key('${p.name}_$index'),
                      direction: DismissDirection.endToStart,
                      background: Container(
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(right: 20),
                        margin: const EdgeInsets.only(bottom: 12),
                        decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(12)),
                        child: const Icon(Icons.delete, color: Colors.white, size: 28),
                      ),
                      onDismissed: (_) => removeItem(index),
                      child: Card(
                        margin: const EdgeInsets.only(bottom: 12),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                          child: Row(
                            children: [
                              Image.asset(p.image, width: 60, height: 60, fit: BoxFit.contain),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(p.name, maxLines: 2, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                                    const SizedBox(height: 2),
                                    Text(p.store, style: const TextStyle(fontSize: 11, color: Colors.grey)),
                                    const SizedBox(height: 4),
                                    Text(
                                      '\$${(double.tryParse(p.price.replaceAll(r'$', '')) ?? 0 * quantityOf(index)).toStringAsFixed(2)}',
                                      style: const TextStyle(fontSize: 13, color: Colors.red, fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 6),
                                    Row(children: [
                                      _QtyButton(icon: Icons.remove, onTap: () => decreaseQty(index)),
                                      const SizedBox(width: 10),
                                      Text('${quantityOf(index)}', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 10),
                                      _QtyButton(icon: Icons.add, onTap: () => increaseQty(index)),
                                    ]),
                                  ],
                                ),
                              ),
                              IconButton(
                                tooltip: 'Remove',
                                icon: const Icon(Icons.delete_outline, color: Colors.red),
                                onPressed: () => removeItem(index),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
        ),
        if (widget.cartProducts.isNotEmpty)
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: Colors.grey.shade100, border: Border(top: BorderSide(color: Colors.grey.shade300))),
            child: Column(children: [
              Row(children: [
                Text('${widget.cartProducts.length} item(s)', style: const TextStyle(fontSize: 14, color: Colors.grey)),
                const Spacer(),
                const Text('Total:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(width: 8),
                Text('\$${totalPrice.toStringAsFixed(2)}', style: const TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold)),
              ]),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity, height: 48,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF9E2A2B), foregroundColor: Colors.white),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => CheckoutPage(cartProducts: widget.cartProducts, totalPrice: totalPrice))),
                  icon: const Icon(Icons.payment),
                  label: const Text('Checkout', style: TextStyle(fontSize: 17)),
                ),
              ),
            ]),
          ),
      ],
    );
  }
}

class ComparisonListPage extends StatelessWidget {
  final List<Product> compareProducts;
  final Function(Product) onRemove;
  final VoidCallback onClear;
  final VoidCallback onCompareNow;
  final Function(Product) onAddToCart;
  const ComparisonListPage({super.key, required this.compareProducts, required this.onRemove, required this.onClear, required this.onCompareNow, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchBarBox(onChanged: (_) {}),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(children: [
            const Text('Comparison List', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Spacer(),
            if (compareProducts.isNotEmpty) TextButton(onPressed: onClear, child: const Text('Clear')),
          ]),
        ),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child: Text('${compareProducts.length} shoe(s) selected', style: const TextStyle(color: Colors.grey))),
        const SizedBox(height: 8),
        Expanded(
          child: compareProducts.isEmpty
              ? const Center(child: Text('No shoes selected for comparison.\nTap Compare on any shoe.', textAlign: TextAlign.center, style: TextStyle(fontSize: 18)))
              : ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: compareProducts.length,
                  itemBuilder: (context, index) {
                    final p = compareProducts[index];
                    return Card(margin: const EdgeInsets.only(bottom: 12), child: ListTile(
                      leading: Image.asset(p.image, width: 65, height: 65, fit: BoxFit.contain),
                      title: Text(p.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('${p.price}\n${p.store}\n${p.delivery}'),
                      isThreeLine: true,
                      trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                        IconButton(tooltip: 'Add to cart', icon: const Icon(Icons.shopping_cart), onPressed: () => onAddToCart(p)),
                        IconButton(tooltip: 'Remove', icon: const Icon(Icons.delete, color: Colors.red), onPressed: () => onRemove(p)),
                      ]),
                    ));
                  },
                ),
        ),
        if (compareProducts.isNotEmpty)
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: Colors.grey.shade100, border: Border(top: BorderSide(color: Colors.grey.shade300))),
            child: Column(children: [
              const Text('Add at least 2 shoes to compare side by side.', style: TextStyle(fontSize: 14)),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity, height: 48,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF9E2A2B), foregroundColor: Colors.white),
                  onPressed: onCompareNow,
                  icon: const Icon(Icons.compare),
                  label: const Text('Compare Now', style: TextStyle(fontSize: 17)),
                ),
              ),
            ]),
          ),
      ],
    );
  }
}

class CheckoutPage extends StatefulWidget {
  final List<Product> cartProducts;
  final double totalPrice;
  const CheckoutPage({super.key, required this.cartProducts, required this.totalPrice});
  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  String selectedPayment = 'Bank Card';
  bool isProcessing = false;
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final phoneController = TextEditingController();

  void placeOrder() async {
    if (nameController.text.isEmpty || addressController.text.isEmpty || phoneController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please fill all delivery details')));
      return;
    }
    setState(() => isProcessing = true);
    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => OrderSuccessPage(totalPrice: widget.totalPrice, paymentMethod: selectedPayment)));
  }

  @override
  void dispose() { nameController.dispose(); addressController.dispose(); phoneController.dispose(); super.dispose(); }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleTopBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('Checkout', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          const Text('Order Summary', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Card(child: Column(children: widget.cartProducts.map((p) => ListTile(
            leading: Image.asset(p.image, width: 45, height: 45, fit: BoxFit.contain),
            title: Text(p.name),
            subtitle: Text(p.store),
            trailing: Text(p.price, style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
          )).toList())),
          const SizedBox(height: 16),
          const Text('Delivery Details', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          TextField(controller: nameController, decoration: const InputDecoration(labelText: 'Full Name', border: OutlineInputBorder(), prefixIcon: Icon(Icons.person))),
          const SizedBox(height: 12),
          TextField(controller: addressController, decoration: const InputDecoration(labelText: 'Delivery Address', border: OutlineInputBorder(), prefixIcon: Icon(Icons.location_on))),
          const SizedBox(height: 12),
          TextField(
            controller: phoneController,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            maxLength: 15,
            decoration: const InputDecoration(
              labelText: 'Phone Number (digits only)',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.phone),
              counterText: '',
            ),
          ),
          const SizedBox(height: 18),
          const Text('Payment Method', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          RadioListTile<String>(title: const Text('Bank Card'), subtitle: const Text('Pay using debit or credit card'), value: 'Bank Card', groupValue: selectedPayment, onChanged: (v) => setState(() => selectedPayment = v!)),
          RadioListTile<String>(title: const Text('AfterPay'), subtitle: const Text('Buy now, pay later'), value: 'AfterPay', groupValue: selectedPayment, onChanged: (v) => setState(() => selectedPayment = v!)),
          RadioListTile<String>(title: const Text('Latitude Credit Card'), subtitle: const Text('Pay using Latitude credit option'), value: 'Latitude Credit Card', groupValue: selectedPayment, onChanged: (v) => setState(() => selectedPayment = v!)),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(8)),
            child: Row(children: [
              const Text('Total Payment:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const Spacer(),
              Text('\$${widget.totalPrice.toStringAsFixed(2)}', style: const TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold)),
            ]),
          ),
          const SizedBox(height: 18),
          SizedBox(
            width: double.infinity, height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF9E2A2B), foregroundColor: Colors.white),
              onPressed: isProcessing ? null : placeOrder,
              child: isProcessing ? const SizedBox(height: 22, width: 22, child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2)) : const Text('Place Order', style: TextStyle(fontSize: 18)),
            ),
          ),
        ]),
      ),
    );
  }
}

class OrderSuccessPage extends StatelessWidget {
  final double totalPrice;
  final String paymentMethod;
  const OrderSuccessPage({super.key, required this.totalPrice, required this.paymentMethod});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleTopBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Icon(Icons.check_circle, size: 110, color: Colors.green),
            const SizedBox(height: 20),
            const Text('Order Successful!', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            const Text('Your dummy checkout process is completed.', textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
            const SizedBox(height: 24),
            Card(child: Padding(padding: const EdgeInsets.all(16), child: Column(children: [
              SummaryRow(title: 'Payment Method', value: paymentMethod),
              const SizedBox(height: 8),
              SummaryRow(title: 'Total Paid', value: '\$${totalPrice.toStringAsFixed(2)}'),
              const SizedBox(height: 8),
              const SummaryRow(title: 'Order Status', value: 'Confirmed'),
            ]))),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity, height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF9E2A2B), foregroundColor: Colors.white),
                onPressed: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => const MainPage()), (route) => false),
                child: const Text('Back to Home'),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class SummaryRow extends StatelessWidget {
  final String title;
  final String value;
  const SummaryRow({super.key, required this.title, required this.value});
  @override
  Widget build(BuildContext context) {
    return Row(children: [Text(title, style: const TextStyle(fontWeight: FontWeight.bold)), const Spacer(), Text(value)]);
  }
}

class ComparePage extends StatelessWidget {
  final List<Product> compareProducts;
  final Function(Product) onAddToCart;
  const ComparePage({super.key, required this.compareProducts, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    final items = compareProducts.length > 2 ? compareProducts.sublist(compareProducts.length - 2) : compareProducts;
    final first = items[0];
    final second = items[1];
    return Scaffold(
      appBar: const SimpleTopBar(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SearchBarBox(onChanged: (_) {}),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('Comparison', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
        const SizedBox(height: 10),
        Expanded(child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            Row(children: [
              Expanded(child: CompareProductHeader(product: first)),
              const SizedBox(width: 8),
              const Text('VS', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
              const SizedBox(width: 8),
              Expanded(child: CompareProductHeader(product: second)),
            ]),
            const SizedBox(height: 20),
            CompareRow(title: 'Price', firstValue: first.price, secondValue: second.price),
            CompareRow(title: 'Category', firstValue: first.category, secondValue: second.category),
            CompareRow(title: 'Store', firstValue: first.store, secondValue: second.store),
            CompareRow(title: 'Delivery', firstValue: first.delivery, secondValue: second.delivery),
            CompareRow(title: 'Description', firstValue: first.description, secondValue: second.description),
            const SizedBox(height: 20),
            Row(children: [
              Expanded(child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white),
                onPressed: () { onAddToCart(first); Navigator.pop(context); },
                child: const Text('Add to Cart'),
              )),
              const SizedBox(width: 12),
              Expanded(child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white),
                onPressed: () { onAddToCart(second); Navigator.pop(context); },
                child: const Text('Add to Cart'),
              )),
            ]),
          ]),
        )),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF9E2A2B),
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        onTap: (_) => Navigator.pop(context),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.compare_arrows), label: 'Compare'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class CompareProductHeader extends StatelessWidget {
  final Product product;
  const CompareProductHeader({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.grey.shade100, border: Border.all(color: Colors.grey.shade300), borderRadius: BorderRadius.circular(8)),
      child: Column(children: [
        Expanded(child: Image.asset(product.image, fit: BoxFit.contain)),
        const SizedBox(height: 8),
        Text(product.name, textAlign: TextAlign.center, maxLines: 2, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
        Text(product.price, style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
      ]),
    );
  }
}

class CompareRow extends StatelessWidget {
  final String title;
  final String firstValue;
  final String secondValue;
  const CompareRow({super.key, required this.title, required this.firstValue, required this.secondValue});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade300)),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(width: 95, padding: const EdgeInsets.all(8), color: Colors.grey.shade200, child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold))),
        Expanded(child: Container(padding: const EdgeInsets.all(8), color: Colors.white, child: Text(firstValue, style: const TextStyle(fontSize: 13)))),
        Expanded(child: Container(padding: const EdgeInsets.all(8), color: Colors.white, child: Text(secondValue, style: const TextStyle(fontSize: 13)))),
      ]),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  static void showProfileMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), duration: const Duration(seconds: 1)));
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(24),
          decoration: const BoxDecoration(color: Color(0xFF9E2A2B), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(28), bottomRight: Radius.circular(28))),
          child: const Column(children: [
            CircleAvatar(
              radius: 48,
              backgroundColor: Colors.white,
              child: Text('SP', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF9E2A2B))),
            ),
            SizedBox(height: 12),
            Text('Subha Sanket Pokhrel', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            Text('ssp2836492@gmail.com', style: TextStyle(color: Colors.white70, fontSize: 13)),
          ]),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(children: [
            Expanded(child: ProfileInfoCard(icon: Icons.shopping_bag, title: 'Orders', value: '12')),
            SizedBox(width: 12),
            Expanded(child: ProfileInfoCard(icon: Icons.favorite, title: 'Wishlist', value: '8')),
            SizedBox(width: 12),
            Expanded(child: ProfileInfoCard(icon: Icons.local_shipping, title: 'Delivery', value: '3')),
          ]),
        ),
        const SizedBox(height: 24),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('Account', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
        const SizedBox(height: 8),
        ProfileMenuItem(icon: Icons.person_outline, title: 'Personal Information', subtitle: 'Name, email and phone number', onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const PersonalInformationPage()))),
        ProfileMenuItem(icon: Icons.location_on_outlined, title: 'Delivery Address', subtitle: 'Manage your saved address', onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AddressPage()))),
        ProfileMenuItem(icon: Icons.payment, title: 'Payment Methods', subtitle: 'Bank Card, AfterPay, Latitude', onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const PaymentMethodsPage()))),
        ProfileMenuItem(icon: Icons.receipt_long, title: 'Order History', subtitle: 'View your previous shoe orders', onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const OrderHistoryPage()))),
        ProfileMenuItem(icon: Icons.favorite_border, title: 'Wishlist', subtitle: 'Shoes saved for later', onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const WishlistPage()))),
        const SizedBox(height: 16),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('Settings', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
        const SizedBox(height: 8),
        ProfileMenuItem(icon: Icons.notifications_none, title: 'Notifications', subtitle: 'Order updates and special offers', onTap: () => showProfileMessage(context, 'Notifications clicked')),
        ProfileMenuItem(icon: Icons.help_outline, title: 'Help & Support', subtitle: 'Contact support for help', onTap: () => showProfileMessage(context, 'Help & Support clicked')),
        ProfileMenuItem(icon: Icons.logout, title: 'Logout', subtitle: 'Sign out from your account', iconColor: Colors.red, onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginPage()))),
        const SizedBox(height: 24),
      ]),
    );
  }
}

class ProfileInfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  const ProfileInfoCard({super.key, required this.icon, required this.title, required this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(14), border: Border.all(color: Colors.grey.shade300)),
      child: Column(children: [
        Icon(icon, color: const Color(0xFF9E2A2B), size: 28),
        const SizedBox(height: 8),
        Text(value, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text(title, style: const TextStyle(fontSize: 13, color: Colors.grey)),
      ]),
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final Color iconColor;
  const ProfileMenuItem({super.key, required this.icon, required this.title, required this.subtitle, required this.onTap, this.iconColor = const Color(0xFF9E2A2B)});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: ListTile(
        leading: CircleAvatar(backgroundColor: iconColor.withOpacity(0.12), child: Icon(icon, color: iconColor)),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}

class PersonalInformationPage extends StatelessWidget {
  const PersonalInformationPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleTopBar(),
      body: ListView(padding: const EdgeInsets.all(16), children: [
        const Text('Personal Information', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        const CircleAvatar(radius: 50, backgroundColor: Color(0xFF9E2A2B), child: Text('SP', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white))),
        const SizedBox(height: 24),
        const ProfileDetailTile(icon: Icons.person, title: 'Full Name', value: 'Subha Sanket Pokhrel'),
        const ProfileDetailTile(icon: Icons.email, title: 'Email', value: 'ssp2836492@gmail.com'),
        const ProfileDetailTile(icon: Icons.phone, title: 'Phone', value: '0451201888'),
        const ProfileDetailTile(icon: Icons.location_city, title: 'City', value: 'Wollongong, NSW'),
        const SizedBox(height: 16),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF9E2A2B), foregroundColor: Colors.white),
          onPressed: () {},
          icon: const Icon(Icons.edit),
          label: const Text('Edit Profile'),
        ),
      ]),
    );
  }
}

class ProfileDetailTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  const ProfileDetailTile({super.key, required this.icon, required this.title, required this.value});
  @override
  Widget build(BuildContext context) {
    return Card(child: ListTile(leading: Icon(icon, color: const Color(0xFF9E2A2B)), title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)), subtitle: Text(value)));
  }
}

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({super.key});
  @override
  Widget build(BuildContext context) {
    final orders = [
      {'orderId': '#SH12345', 'product': 'Nike Revolution 7 Men Black', 'price': r'$127.96', 'status': 'Delivered'},
      {'orderId': '#SH12346', 'product': 'Adidas Grand Court 2.0 White', 'price': r'$110.00', 'status': 'Processing'},
      {'orderId': '#SH12347', 'product': 'Julius Marlow Leather Chelsea Boot', 'price': r'$129.95', 'status': 'Shipped'},
    ];
    return Scaffold(
      appBar: const SimpleTopBar(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(padding: EdgeInsets.all(16), child: Text('Order History', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold))),
        Expanded(child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: orders.length,
          itemBuilder: (context, index) {
            final order = orders[index];
            Color statusColor = order['status'] == 'Processing' ? Colors.orange : order['status'] == 'Shipped' ? Colors.blue : Colors.green;
            return Card(margin: const EdgeInsets.only(bottom: 12), child: ListTile(
              leading: const CircleAvatar(backgroundColor: Color(0xFF9E2A2B), child: Icon(Icons.shopping_bag, color: Colors.white)),
              title: Text(order['product']!, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Order ID: ${order['orderId']}\nPrice: ${order['price']}'),
              isThreeLine: true,
              trailing: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(color: statusColor.withOpacity(0.15), borderRadius: BorderRadius.circular(12)),
                child: Text(order['status']!, style: TextStyle(color: statusColor, fontWeight: FontWeight.bold)),
              ),
            ));
          },
        )),
      ]),
    );
  }
}

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleTopBar(),
      body: ListView(padding: const EdgeInsets.all(16), children: [
        const Text('Delivery Address', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        Card(child: ListTile(leading: const Icon(Icons.home, color: Color(0xFF9E2A2B)), title: const Text('Home Address', style: TextStyle(fontWeight: FontWeight.bold)), subtitle: const Text('12 Market Street, Wollongong NSW\nAustralia 2500'), isThreeLine: true, trailing: IconButton(icon: const Icon(Icons.edit), onPressed: () {}))),
        Card(child: ListTile(leading: const Icon(Icons.work, color: Color(0xFF9E2A2B)), title: const Text('Work Address', style: TextStyle(fontWeight: FontWeight.bold)), subtitle: const Text('UOW Campus, Northfields Avenue\nWollongong NSW 2522'), isThreeLine: true, trailing: IconButton(icon: const Icon(Icons.edit), onPressed: () {}))),
        const SizedBox(height: 16),
        ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF9E2A2B), foregroundColor: Colors.white), onPressed: () {}, icon: const Icon(Icons.add), label: const Text('Add New Address')),
      ]),
    );
  }
}

class PaymentMethodsPage extends StatelessWidget {
  const PaymentMethodsPage({super.key});
  @override
  Widget build(BuildContext context) {
    final payments = [
      {'title': 'Bank Card', 'subtitle': 'Visa ending in 1234'},
      {'title': 'AfterPay', 'subtitle': 'Buy now, pay later enabled'},
      {'title': 'Latitude Credit Card', 'subtitle': 'Latitude payment option active'},
    ];
    return Scaffold(
      appBar: const SimpleTopBar(),
      body: ListView(padding: const EdgeInsets.all(16), children: [
        const Text('Payment Methods', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        ...payments.map((p) => Card(child: ListTile(
          leading: const CircleAvatar(backgroundColor: Color(0xFF9E2A2B), child: Icon(Icons.payment, color: Colors.white)),
          title: Text(p['title']!, style: const TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(p['subtitle']!),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        ))),
        const SizedBox(height: 16),
        ElevatedButton.icon(style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF9E2A2B), foregroundColor: Colors.white), onPressed: () {}, icon: const Icon(Icons.add_card), label: const Text('Add Payment Method')),
      ]),
    );
  }
}

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});
  @override
  Widget build(BuildContext context) {
    final wishlistProducts = products.take(4).toList();
    return Scaffold(
      appBar: const SimpleTopBar(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(padding: EdgeInsets.all(16), child: Text('Wishlist', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold))),
        Expanded(child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: wishlistProducts.length,
          itemBuilder: (context, index) {
            final p = wishlistProducts[index];
            return Card(margin: const EdgeInsets.only(bottom: 12), child: ListTile(
              leading: Image.asset(p.image, width: 60, height: 60, fit: BoxFit.contain),
              title: Text(p.name, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('${p.price}\n${p.store}'),
              isThreeLine: true,
              trailing: const Icon(Icons.favorite, color: Colors.red),
            ));
          },
        )),
      ]),
    );
  }
}