import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'PUBLIC_KEY', obfuscate: true)
  static final String publicKey = _Env.publicKey;

  @EnviedField(varName: 'PRIVATE_KEY', obfuscate: true)
  static final String privateKey = _Env.privateKey;

  @EnviedField(varName: 'BASE_URL', obfuscate: true)
  static final String baseUrl = _Env.baseUrl;

  @EnviedField(varName: 'EXTENSION_URL', obfuscate: true)
  static final String extensionUrl = _Env.extensionUrl;

  @EnviedField(varName: 'COMICS_ENDPOINT', obfuscate: true)
  static final String comicsEndpoint = _Env.comicsEndpoint;

  @EnviedField(varName: 'EVENTS_ENDPOINT', obfuscate: true)
  static final String eventsEndpoint = _Env.eventsEndpoint;

  @EnviedField(varName: 'SERIES_ENDPOINT', obfuscate: true)
  static final String seriesEndpoint = _Env.seriesEndpoint;

  @EnviedField(varName: 'STORIES_ENDPOINT', obfuscate: true)
  static final String storiesEndpoint = _Env.storiesEndpoint;
}
