import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

Future<void> initServer() async {
  await Parse().initialize('bms', 'https://bmsbackend.herokuapp.com/api',
      coreStore: await CoreStoreSembastImp.getInstance());
}
