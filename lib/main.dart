import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

// Scaffold Widget 手机应用框架: 有标题栏，内容

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Center(child: Text("SHOOP"))),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: <Widget>[
          ProductItem("MacBook Pro", "极客之选年度产品...", "https://img1.baidu.com/it/u=205675338,1463974809&fm=253&fmt=auto&app=120&f=JPEG?w=750&h=500"),
          ProductItem("华为笔记本", "升级智慧办公体验...", "https://img1.baidu.com/it/u=2207681058,1235338502&fm=253&fmt=auto&app=120&f=JPEG?w=1233&h=800"),
          ProductItem("小米笔记本", "8G内存i5带独显...", "https://img2.baidu.com/it/u=2807262422,2560733670&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500")
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  String title;
  String subTitle;
  String imageUrl;

  ProductItem(this.title, this.subTitle, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(border: Border.all(width: 3)),
      child: Column(
        children: <Widget>[
          Text(title, style: const TextStyle(fontSize: 24),),
          Text(subTitle, style: const TextStyle(fontSize: 18),),
          const SizedBox(height: 10,),
          Image.network(imageUrl)
        ], 
      ),
    );
  }
}