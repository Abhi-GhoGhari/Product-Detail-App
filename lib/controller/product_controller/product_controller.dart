import 'package:produuct_detail_app/headers.dart';
import 'package:produuct_detail_app/helper/api_helper/product.dart';
import 'package:produuct_detail_app/modal/product_modal.dart';

class ProductController extends ChangeNotifier {
  List<ProductMd> allProduct = [];

  ProductController() {
    getProduct();
  }

  getProduct() async {
    allProduct = await ProductHelper.apihelper.getproductapi();
    notifyListeners();
  }
}
