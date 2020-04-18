import 'package:http/http.dart' as http;
import 'package:music_app/core/infraestructure/model/api-client-response.dart';

class ApiClient {
  Future<PosApiClientResponse> post(String endpoint, String data) async {
    PosApiClientResponse posApiClientResponse;

    var content;
    var _headers = await _createHeaders();

    var url = "https://api.spotify.com/v1/" + endpoint;

    await http.post(url, headers: _headers, body: content).then((response) {
      posApiClientResponse =
          new PosApiClientResponse(response.statusCode, response.body);
    }).catchError((error) {
      posApiClientResponse = new PosApiClientResponse(500, error.message);
    });

    return posApiClientResponse;
  }

  Future<PosApiClientResponse> get(String endpoint, String data) async {
    PosApiClientResponse posApiClientResponse;

    var content;
    var _headers = await _createHeaders();

    var url = "https://api.spotify.com/v1/" + endpoint + data;

    await http.get(url, headers: _headers).then((response) {
      posApiClientResponse =
          new PosApiClientResponse(response.statusCode, response.body);
    }).catchError((error) {
      posApiClientResponse = new PosApiClientResponse(500, error.message);
    });

    return posApiClientResponse;
  }

  Future<Map<String, String>> _createHeaders() async {
    Map<String, String> content = {
      "Accept": "application/json",
      "Content-Type": "application/x-www-form-urlencoded",
      "Origin": "http://bvc-client-device.com",
      "Authorization":
          "Bearer BQDakKnPLwMAOuAJhhs_w4_MiHSKm4j2sRr-6IZVqXnDMUbr3R96CP_Ud-a6b-Ud_-vklRI500V7jLoPLVKL7aUTYt9r1YtTPo_JLJCuXYKEybMo4rX_5FVsorK7HYmLFFeg5HWVjzRMhVR7253bLbcAyMXq1HioBViYKPLKzFQZdowk"
    };

    return content;
  }
}
