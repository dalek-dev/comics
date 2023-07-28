import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:marvel_app/src/core/config/environment/env.dart';

String generateMd5(int input) {
  return md5
      .convert(utf8.encode('$input${Env.privateKey}${Env.publicKey}'))
      .toString()
      .toLowerCase();
}
