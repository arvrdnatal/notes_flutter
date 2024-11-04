import 'package:go_router/go_router.dart';
import 'package:notes_flutter/ui/notes_page.dart';

class RouteManager {
  static const notesPage = '/';

  static final routes = GoRouter(
    initialLocation: notesPage,
    routes: [
      GoRoute(
        path: notesPage,
        builder: (context, state) => const NotesPage(),
      ),
    ],
  );
}
