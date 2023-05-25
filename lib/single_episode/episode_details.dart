import 'package:flutter/material.dart';
import 'package:rick_and_morty/single_episode/query_body.dart';

class EpisodeDetails extends StatelessWidget {
  /// Provides screen for a single episode
  /// and returns a Scaffold widget of the app.
  /// This widget is used in EpisodesList widget.
  final String? id, episodeTitle, episode;

  const EpisodeDetails({Key? key, this.id, this.episodeTitle, this.episode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${episode!} - ${episodeTitle!}',
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: SingleEpisodeQueryBody(id: id),
    );
  }
}
