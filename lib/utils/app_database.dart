import 'package:hive_flutter/hive_flutter.dart';
import '../model/product.dart';

class AppDatabase {
  late final Box<Product> product;

  static Future<AppDatabase> instance() async {
    final Box<Product> pd = Hive.box('product');
    return AppDatabase._(pd);
  }

  AppDatabase._(this.product);

  getPastProduct() {
    return product.get('past');
  }

  setPastProduct(Product value) async {
    await product.put('past', value);
  }
}
