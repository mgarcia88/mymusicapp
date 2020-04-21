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
          "Bearer BQAifp5AKDOWBXWPwbUQIJxtxfr9jTgY-XLUEMr5W7VDKq_5ywLQviMbuz_Rlng7ojcYtAvKsutvsNP1hHaw4_djJ3WABwe7v769ok1utPZXooQQ5h-FTR8u4IsZ0MOtVrS0YC_PPt8jFZcbRc0G1yHQZJOVYotL5HFF0Av-OSd_aGI_"
    };

    return content;
  }
}
