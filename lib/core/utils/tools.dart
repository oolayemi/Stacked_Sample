import 'package:flutter_dotenv/flutter_dotenv.dart';

String? env( name ) {
  return dotenv.env[name];
}