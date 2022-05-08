import 'package:dartz/dartz.dart';

import 'product.dart';
import 'product_failure.dart';

abstract class IProductRepository {
  Future<Either<ProductFailure, List<Product>>> getData();
}
