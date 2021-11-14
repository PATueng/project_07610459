import 'package:project_07610459/models/activity_item.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ActivityService{
  static Future<ActivityItem> randomActivity() async{
    var url = Uri.parse("https://www.boredapi.com/api/activity");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonBody = json.decode(response.body);
      print('RESPONSE BODY: $jsonBody');
      var apiResult = ActivityItem.fromJson(jsonBody);
      print("activity = " + apiResult.activity);
      return apiResult;
    }else{
      throw 'Server connection failed!';
    }
  }
}