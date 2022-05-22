import 'package:http/http.dart' as http;

import '../models/posts.dart';

class RemoteService {
  Future<List<Post>?> getAlbum() async {
    var client = http.Client();
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/albums/');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
    return null;
  }
}
