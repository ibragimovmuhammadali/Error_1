

import 'package:flutter/material.dart';
import 'package:http/http.dart/' as http;
import 'package:ngdemo14/service/http_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  apiLoadPostList() async{
   var url = Uri.http('jsonplaceholder.typicode.com', '/posts');
   var response = await http.get(url);
   print(response.statusCode);
   print(response.body);
    }

  apiLoadPostList2() async{
    var response = await HttpService.GET(HttpService.API_POST_LIST, HttpService.paramsEmpty());
    print(response);
  }

  @override
  void initState() {
    super.initState();
    apiLoadPostList2();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: Text("Home Page"),
      ),
    );
  }
}
