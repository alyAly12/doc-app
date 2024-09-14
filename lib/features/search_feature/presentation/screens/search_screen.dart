import 'package:doc_app/core/helper/extenstions.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          context.pop();
        },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: const Center(
        child: Text('search'),
      ),
    );
  }
}