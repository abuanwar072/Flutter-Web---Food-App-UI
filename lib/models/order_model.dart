import 'package:food_web/models/menu_item_model.dart';
import 'package:food_web/models/user_model.dart';

class OrderModel{

  UserModel user;
  List<MenuItemModel> orderItems;
  String timeOfOrder;

  OrderModel(this.user, this.orderItems, this.timeOfOrder);
}