/// The code below is used to create a class to act as a repository for our app
import 'package:flutter_with_bloc_pattern_and_graphql/services/graphql_service.dart';
import 'package:graphql/client.dart';

class Repository {
  /// the code below is used to create an instance of the graphql service
  GraphQLService graphQLService = GraphQLService();

  Future<QueryResult>? getData(String query) =>
      graphQLService.performQuery(query);
}
