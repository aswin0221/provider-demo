import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/list_provider.dart';
import 'package:provider_demo/secondpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
            }, child: Text("Second Page"))
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
