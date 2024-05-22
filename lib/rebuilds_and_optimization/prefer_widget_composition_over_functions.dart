import 'package:flutter/material.dart';

class Product {
  final String name;
  final String category;
  final double price;
  Product({required this.name, required this.category, required this.price});
}

class ProductsScreen extends StatelessWidget {
  ProductsScreen({super.key});

  final List<Product> products = [
    Product(name: 'product1', category: 'a', price: 100),
    Product(name: 'product1', category: 'b', price: 200),
    Product(name: 'product1', category: 'c', price: 300),
    Product(name: 'product1', category: 'c', price: 300),
    Product(name: 'product1', category: 'c', price: 300),
    Product(name: 'product1', category: 'c', price: 300),
    Product(name: 'product1', category: 'c', price: 300),
    Product(name: 'product1', category: 'c', price: 300),
    Product(name: 'product1', category: 'c', price: 300),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FilterBar(),
        Expanded(
          child: ProductList(products: products),
        ),
      ],
    );
  }
}

class ProductList extends StatelessWidget {
  // const ProductList({super.key, required List<Product> products, required this.products});
  final List<Product> products;
  const ProductList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductItem(product: products[index]);
      },
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;
  // const ProductItem({super.key, required Product product, required this.product});
  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(product.name),
        subtitle: Text(product.category),
        trailing: Text(
          ('\$${product.price.toStringAsFixed(2)}'),
        ),
      ),
    );
  }
}

class FilterBar extends StatelessWidget {
  const FilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Filter option'),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_list),
          )
        ],
      ),
    );
  }
}

// ví dụ khan
class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget(
      {super.key,
      required this.name,
      required this.address,
      required this.phoneNumber});
  final String name;
  final String address;
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UserInfoItems(value: 'Lương', label: 'name'),
        UserInfoItems(value: 'nd', label: 'address'),
        UserInfoItems(value: '0123', label: 'NumberPhone'),
      ],
    );
  }
}

class UserInfoItems extends StatelessWidget {
  const UserInfoItems({super.key, required this.value, required this.label});
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }
}
