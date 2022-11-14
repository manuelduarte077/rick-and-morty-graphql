/// the code below is used to create a service for getting the data and performing query on it from the graphql
import 'package:graphql/client.dart';

class GraphQLService {
  /// using the dart construtor to initialize the above property of GraphQLClient
  GraphQLService() {
    /// the code below is used to get the http url for our api call
    final link = HttpLink('https://rickandmortyapi.com/graphql/');

    /// the code below is used to pass the link to the graphql client
    _client = GraphQLClient(
      link: link,
      cache: GraphQLCache(),
    );
  }

  /// the code below is used to create an instance of the graphql client
  GraphQLClient? _client;

  /// the code below is used to create a method to perform the query and get data from the graphql

  /// the method below takes the query as input that we want to apply while getting data from api using graphql
  Future<QueryResult>? performQuery(String? query,
      {Map<String, dynamic>? variables}) async {
    // the code below is used to pass the query as a document to the graphql server
    QueryOptions options = QueryOptions(document: gql(query.toString()));

    final result = await _client!.query(options);

    print("The result is: $result");

    return result;
  }

  /// the code below is used to create a method to perform mutation and get the data from graphql

  /// the method below takes the query as input that we want to apply while getting data from api using graphql
  Future<QueryResult>? performMutation(String? query,
      {Map<String, dynamic>? variables}) async {
    // the code below is used to pass the query as a document to the graphql server
    MutationOptions options = MutationOptions(document: gql(query.toString()));

    final result = await _client!.mutate(options);

    print(result);

    return result;
  }
}
