import 'dart:convert';
import 'package:http/http.dart' as http;
import 'response_model.dart';

class HttpService {
  final String postsURL = "http://api.aksharamrutam.in/v2/api/getAlbumData";

  Future<AlbumModel?> fetchUserData() async {
    String postsURL = "http://api.aksharamrutam.in/v2/api/getAlbumData";

    var accessToken='Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJJZCI6IjY0YmY3M2Y3NWI2MWE2MDAwODZjYjJmZCIsInBob25lTnVtYmVyIjoiKzkxOTQyNzQ4OTQyOSIsImRldmljZV90b2tlbiI6InNkZHNkd2Uyc2RkcyJ9LCJpYXQiOjE2OTA4Njk4OTJ9.O2bCwy7AMJMCaIPr8gVYYLMGkJ6R8ncx0fgvmCBEv9o';

    try {

      final Map<String, String> requestData = {
        'userId': '64bf73f75b61a600086cb2fd', // Replace with your POST data
        'playlistId': '64c0bc3c5b61a600086ffaaf',
        'limit': '100',
        'offset': '100',
        'getPlaylistData': 'true',
        'isAllTrack': 'true',
        'isBetaEnabled': 'false',
      };
      final Map<String, String> headers11 = {
        'Authorization': accessToken, // Replace with your actual authorization token
      };
      final response = await http.post(Uri.parse(postsURL),
          headers: headers11,
          body: requestData);

      print('Response : ${response.statusCode}');
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        return AlbumModel.fromJson(jsonData);
      } else {
        print('API call failed with status code: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error occurred while calling the API: $e');
      return null;
    }
  }
}
