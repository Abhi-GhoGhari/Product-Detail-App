import 'package:logger/logger.dart';
import 'package:sqflite/sqflite.dart';

enum LoginColumn { id, email, password }

enum CartColumn {
  id,
  title,
  description,
  category,
  price,
  discountPercentage,
  brand,
  warrantyInformation,
  availabilityStatus,
  returnPolicy,
  thumbnail,
}

class DB {
  DB._();
  static final DB db = DB._();
  Logger logger = Logger();
  late Database cart;
  late Database like;
  late Database user;

  String mydb = "mydb.db";
  String cartTable = "cartTable";
  String likeTable = "likeTable";
  String userTable = "uerTable";

  Future<void> initDB() async {
    String path = await getDatabasesPath();
    cart = await openDatabase(
      "$userTable/$path",
      version: 1,
      onCreate: (db, version) {
        String sql = """ CREATE TABLE IF NOT EXISTS $cartTable (
        ${CartColumn.id.name} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${CartColumn.title.name} TEXT,
        ${CartColumn.description.name} TEXT,
        ${CartColumn.category.name} TEXT,
        ${CartColumn.price.name} DOUBLE,
        ${CartColumn.discountPercentage.name} DOUBLE,
        ${CartColumn.brand.name} TEXT,
        ${CartColumn.warrantyInformation.name} TEXT,
        ${CartColumn.availabilityStatus.name} TEXT,
        ${CartColumn.returnPolicy.name} TEXT,
        ${CartColumn.thumbnail.name} TEXT
        );""";

        db
            .execute(sql)
            .then((value) => logger.i("$cartTable created"))
            .onError((error, stackTrace) => logger.i("$cartTable not created"));
      },
    );
    like = await openDatabase(
      "$likeTable/$path",
      version: 1,
      onCreate: (db, version) {
        String sql = """ CREATE TABLE IF NOT EXISTS $likeTable (
        ${CartColumn.id.name} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${CartColumn.title.name} TEXT,
        ${CartColumn.description.name} TEXT,
        ${CartColumn.category.name} TEXT,
        ${CartColumn.price.name} DOUBLE,
        ${CartColumn.discountPercentage.name} DOUBLE,
        ${CartColumn.brand.name} TEXT,
        ${CartColumn.warrantyInformation.name} TEXT,
        ${CartColumn.availabilityStatus.name} TEXT,
        ${CartColumn.returnPolicy.name} TEXT,
        ${CartColumn.thumbnail.name} TEXT
        );""";
        db
            .execute(sql)
            .then((value) => logger.i("$likeTable created"))
            .onError((error, stackTrace) => logger.i("$likeTable not created"));
      },
    );
    user = await openDatabase(
      "$userTable/$path",
      version: 1,
      onCreate: (db, version) {
        String sql = """ CREATE TABLE IF NOT EXISTS $userTable (
        ${LoginColumn.id.name} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${LoginColumn.email.name} TEXT,
        ${LoginColumn.password.name} TEXT,
        );""";
        db
            .execute(sql)
            .then((value) => logger.i("$userTable created"))
            .onError((error, stackTrace) => logger.i("$userTable not created"));
      },
    );
  }
}
