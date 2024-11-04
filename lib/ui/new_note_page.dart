import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notes_flutter/ui/widgets/custom_app_bar.dart';

class NewNotePage extends StatefulWidget {
  const NewNotePage({super.key});

  @override
  State<NewNotePage> createState() => _NewNotePageState();
}

class _NewNotePageState extends State<NewNotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: context.pop,
              icon: const Icon(
                Icons.arrow_back_rounded,
                size: 28,
              ),
            )
          ],
        ),
      ),
    );
  }
}
