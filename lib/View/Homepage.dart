import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/Api_provider.dart';

TextEditingController textEditingController = TextEditingController();

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final Provider = context.watch<Homeproivder>();
    final ProviderF = context.read<Homeproivder>();
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: textEditingController,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 20,
              ))
        ],
      ),
      body: Provider.isLoading
        ? const Center(
        child: CircularProgressIndicator(),
      ):
      GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) => Card(
            child: Image.network(
              fit: BoxFit.cover,
                '${Provider.data['hits'][index]['largeImageURL']}')
          ),

            ),
    );
  }
}
