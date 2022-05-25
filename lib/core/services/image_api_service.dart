import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:test_task/core/models/image_model.dart';

class ImageApiService {
  Future<List<ImageModel>?> fetchImages() async {
    final response = await http.get(Uri.parse(
        "https://api.unsplash.com/photos?per_page=40&client_id=oGm5nh6LApOrlYg3d2PX9D3g2fa97wT2t78StuDyJX0"));
    if (response.statusCode == 200) {
      final imagesData = json.decode(response.body);
      List<ImageModel> listModels = [];
      imagesData.forEach((element) {
        listModels.add(ImageModel.fromJson(element));
      });
      return listModels;
    } else {
      return null;
    }
  }
}
