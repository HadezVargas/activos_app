import 'package:flutter/material.dart';



class Borrar extends StatelessWidget {
  const Borrar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Lista de Textos')),
        body: const TextListWidget(),
      ),
    );
  }
}

class TextListWidget extends StatefulWidget {
  const TextListWidget({super.key});

  @override
  _TextListWidgetState createState() => _TextListWidgetState();
}

class _TextListWidgetState extends State<TextListWidget> {
  List<String> textList = [];

  void addTextToList(String text) {
    setState(() {
      textList.add(text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextEntryForm(addTextToList),
        Expanded(
          child: ListView.builder(
            itemCount: textList.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text(textList[index]));
            },
          ),
        ),
      ],
    );
  }
}

class TextEntryForm extends StatefulWidget {
  final Function(String) onTextAdded;

  const TextEntryForm(this.onTextAdded, {super.key});

  @override
  _TextEntryFormState createState() => _TextEntryFormState();
}

class _TextEntryFormState extends State<TextEntryForm> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _textController,
              decoration: const InputDecoration(labelText: 'Nuevo Texto'),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              widget.onTextAdded(_textController.text);
              _textController.clear();
            },
          ),
        ],
      ),
    );
  }
}
