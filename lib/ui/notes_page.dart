import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:notes_flutter/routes/routes.dart';
import 'package:notes_flutter/themes/main_colors.dart';
import 'package:notes_flutter/ui/widgets/custom_icon_button.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  TextEditingController? _textEditingController;
  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notes',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: isExpanded ? (size.width - 32) : 50,
              height: 50,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  CustomIconButton(
                    iconData: Icons.search_rounded,
                    onPressed: () {
                      setState(() {
                        isExpanded = !isExpanded;
                        if (!isExpanded) _textEditingController?.clear();
                        FocusScope.of(context).unfocus();
                      });
                    },
                  ),
                  Expanded(
                    child: AnimatedOpacity(
                      opacity: isExpanded ? 1 : 0,
                      duration: const Duration(milliseconds: 200),
                      child: TextField(
                        controller: _textEditingController,
                        textAlignVertical: TextAlignVertical.center,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: primaryColor,
                        ),
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelText: 'Pesquise sua nota',
                          labelStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: primaryColor,
                          ),
                          contentPadding: EdgeInsets.zero,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('lib/assets/svgs/new_note.svg', width: 350),
                Text(
                  'Crie sua primeira nota!',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 75,
        height: 75,
        child: FittedBox(
          child: FloatingActionButton(
            shape: const CircleBorder(),
            backgroundColor: colorBlack,
            child: const Icon(Icons.add, color: colorWhite),
            onPressed: () => context.push(RouteManager.newNotePage),
          ),
        ),
      ),
    );
  }
}
