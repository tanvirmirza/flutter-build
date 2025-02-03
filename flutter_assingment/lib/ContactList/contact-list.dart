import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _phone = TextEditingController();

  List<String> name = [];
  List<String> phone = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
            const Text('Contact List', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          TextField(
            controller: _name,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Name',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: _phone,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Number',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_name.text.isNotEmpty && _phone.text.isNotEmpty) {
                      name.add(_name.text);
                      phone.add(_phone.text);
                      _name.clear();
                      _phone.clear();
                    }
                  });
                },
                child: const Text('Add')),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: name.length,
                  itemBuilder: (context, index) => Card(
                        child: ListTile(
                            leading: const Icon(Icons.person),
                            title: Text(
                                name[index][0].toUpperCase() +
                                    name[index].substring(1),
                                style: const TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w700)),
                            subtitle: Text(phone[index]),
                            trailing: const Icon(
                              Icons.call,
                              color: Colors.blue,
                            ),
                            onLongPress: () {
                              showDialog<dynamic>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                        title: const Text('Confirmation'),
                                        content:
                                            Text('Are you sure for Delete?'),
                                        actions: <Widget>[
                                          IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: const Icon(
                                                Icons
                                                    .signal_cellular_no_sim_outlined,
                                                color: Colors.blue,
                                              )),
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  name.removeAt(index);
                                                  phone.removeAt(index);
                                                  Navigator.pop(context);
                                                });
                                              },
                                              icon: const Icon(
                                                  Icons.delete_outline,
                                                  color: Colors.blue)),
                                        ],
                                      ));
                            }),
                      ))),
        ]),
      ),
    );
  }
}
