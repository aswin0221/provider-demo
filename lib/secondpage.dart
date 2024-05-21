import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/list_provider.dart';

class SecondPage extends StatefulWidget {

  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {


  @override
  Widget build(BuildContext context) {
    ListProvider listProvider = Provider.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: listProvider.list.length,
                itemBuilder: (context, index) {
                  return Text(listProvider.list[index].toString());
                },
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("First Page"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          listProvider.addData();
        },
        child: Text("+"),
      ),
    );
  }
}
