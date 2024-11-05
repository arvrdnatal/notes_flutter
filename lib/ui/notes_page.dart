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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notes',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        centerTitle: false,
        actions: [
          CustomIconButton(
            iconData: Icons.search,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            onPressed: () {},
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
