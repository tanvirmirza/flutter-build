import 'package:flutter/material.dart';

class KPassData extends StatefulWidget {
  const KPassData({super.key});

  @override
  State<KPassData> createState() => _KPassDataState();
}

class _KPassDataState extends State<KPassData> {
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pass Data'),
      ),
      body: Center(
        child: TextField(
          controller: textController,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
            prefix: Icon(Icons.text_fields),
            suffix: IconButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShowData(
                                text: textController.text,
                              )));
                });
              },
              icon: Icon(Icons.navigate_next, color: Colors.indigo,),
            ),
          ),
        ),
      ),
    );
  }
}

class ShowData extends StatelessWidget {
  String text;
  ShowData({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Page'),
      ),
      body: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
