Map<String, String> queryParam(String publicKey, String hash, int timestamp) {
  return {'apikey': publicKey, 'hash': hash, 'ts': timestamp.toString()};
}
