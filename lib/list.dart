import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Post extends StatefulWidget {
  const Post({
    super.key,
  });
  @override
  State<Post> createState() => _Posts();
}

class _Posts extends State<Post> {
  List<dynamic> listData = [];
  bool isApiLoaded = false;
  fetchDataFromApi() async {
    var apiUrl = dotenv.env['JSON_API_URL']!;
    var url = Uri.parse(apiUrl);
    if (!isApiLoaded) {
      try {
        var response = await http.get(url);
        if (response.statusCode == 200) {
          isApiLoaded = true;
          var responseMap =
              jsonDecode(utf8.decode(response.bodyBytes)) as List<dynamic>;
          setState(() {
            listData = responseMap;
          });
        }
      } catch (error) {
        print('Error: $error');
      }
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchDataFromApi(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return listData.isNotEmpty
            ? ListView.builder(
                itemCount: listData.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                        "${listData[index]['title']} - ${listData[index]['body']}"),
                  );
                },
              )
            : const Text("Loading");
      },
    );
  }
}
