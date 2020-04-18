class PosApiClientResponse {
  int statusCode;
  String content;

  PosApiClientResponse(int statusCode, String content) {
      this.statusCode = statusCode;
      this.content = content;
    }
}