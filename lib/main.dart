import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:rick_and_morty/all_episodes/episodes_list.dart';
import 'package:rick_and_morty/queries.dart';

void main() {
  runApp(const RickAndMortyApp());
}

class RickAndMortyApp extends StatelessWidget {
  const RickAndMortyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // gql client setup
    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        cache: GraphQLCache(store: InMemoryStore()),
        link: apiLink,
      ),
    );

    /// this provides main screen:
    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true),
        themeMode: ThemeMode.light,
        home: const EpisodesList(),
      ),
    );
  }
}
