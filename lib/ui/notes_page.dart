import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:notes_flutter/routes/routes.dart';
import 'package:notes_flutter/themes/main_colors.dart';
import 'package:notes_flutter/ui/widgets/custom_app_bar.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Notes',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: secondaryColor,
              ),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.search,
                  color: primaryColor,
                  size: 28,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
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
