import 'package:go_router/go_router.dart';
import 'package:notes_flutter/ui/new_note_page.dart';
import 'package:notes_flutter/ui/notes_page.dart';

class RouteManager {
  static const notesPage = '/';
  static const newNotePage = '/newNote';

  static final routes = GoRouter(
    initialLocation: notesPage,
    routes: [
      GoRoute(
        path: notesPage,
        builder: (context, state) => const NotesPage(),
      ),
      GoRoute(
        path: newNotePage,
        builder: (context, state) => const NewNotePage(),
      ),
    ],
  );
}
