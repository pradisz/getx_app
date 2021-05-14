import 'package:get/get.dart';
import 'package:getx_app/lang/en_US.dart';
import 'package:getx_app/lang/id_ID.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en_US,
        'id_ID': id_ID,
      };
}
