import 'package:flutter/material.dart';
import 'package:markdown_editor_plus/markdown_editor_plus.dart';
import 'package:notes_flutter/ui/widgets/custom_icon_button.dart';

class NewNotePage extends StatefulWidget {
  const NewNotePage({super.key});

  @override
  State<NewNotePage> createState() => _NewNotePageState();
}

class _NewNotePageState extends State<NewNotePage> {
  TextEditingController? _textEditingController;

  String text = '';
  bool isShowingPreview = false;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova nota'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomIconButton(
              iconData: Icons.preview,
              onPressed: () {
                setState(() {
                  isShowingPreview = !isShowingPreview;
                });
              },
              activated: isShowingPreview,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Builder(
            builder: (context) {
              if (isShowingPreview) {
                return MarkdownParse(data: text);
              } else {
                return TextField(
                  expands: true,
                  minLines: null,
                  maxLines: null,
                  decoration: const InputDecoration(
                    label: Text('Escreva aqui...'),
                    border: OutlineInputBorder(),
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                  ),
                  textAlignVertical: TextAlignVertical.top,
                  controller: _textEditingController,
                  onChanged: (String data) {
                    setState(() {
                      text = data;
                    });
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
