/// the code below is used to create a bloc class for containing the bussiness logic
/// for getting the data from graphql
import 'package:flutter_with_bloc_pattern_and_graphql/model/home_model.dart';
import 'package:flutter_with_bloc_pattern_and_graphql/repository/repository.dart';
import 'package:graphql/client.dart';
import 'package:rxdart/rxdart.dart';

class GraphQLBloc {
  /// the code below is used to create an instance of the repository
  Repository repository = Repository();

  /// the code below is used to create an instance of the publish subject
  final _dataFetcher = PublishSubject<ItemData>();

  /// the code below is used to create a getter of type Stream<List<HomeModel>> for
  /// getting the data stream from the PublishSubject<List<HomeModel>>
  Stream<ItemData> get dataStream => _dataFetcher.stream;

  /// the code below is used to create a method for getting the data from
  /// graphql and adding them to  the stream

  getData(String query) async {
    try {
      // the below line of code is for debugging purpose
      print('GraphQLBoc: inside getData method');
      QueryResult? result = await repository.getData(query);
      // the fromJSON method takes the location where we want to get the data as input
      final ItemData data =
          ItemData.fromJSON(result!.data!['characters']['results']);
      print('Bloc: ${data.dataList.length}');
      _dataFetcher.sink.add(data);
    } catch (e) {
      print('graphql Bloc: $e');
    }
  }

  dispose() {
    _dataFetcher.close();
  }
}

/// the code below is used to create an instance of the GraphQLBloc class
final bloc = GraphQLBloc();
