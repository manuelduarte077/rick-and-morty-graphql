import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$QueryCharacters {
  Query$QueryCharacters({
    this.characters,
    required this.$__typename,
  });

  factory Query$QueryCharacters.fromJson(Map<String, dynamic> json) {
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$QueryCharacters(
      characters: l$characters == null
          ? null
          : Query$QueryCharacters$characters.fromJson(
              (l$characters as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$QueryCharacters$characters? characters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$characters = characters;
    _resultData['characters'] = l$characters?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$characters = characters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$characters,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$QueryCharacters) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != lOther$characters) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$QueryCharacters on Query$QueryCharacters {
  CopyWith$Query$QueryCharacters<Query$QueryCharacters> get copyWith =>
      CopyWith$Query$QueryCharacters(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$QueryCharacters<TRes> {
  factory CopyWith$Query$QueryCharacters(
    Query$QueryCharacters instance,
    TRes Function(Query$QueryCharacters) then,
  ) = _CopyWithImpl$Query$QueryCharacters;

  factory CopyWith$Query$QueryCharacters.stub(TRes res) =
      _CopyWithStubImpl$Query$QueryCharacters;

  TRes call({
    Query$QueryCharacters$characters? characters,
    String? $__typename,
  });
  CopyWith$Query$QueryCharacters$characters<TRes> get characters;
}

class _CopyWithImpl$Query$QueryCharacters<TRes>
    implements CopyWith$Query$QueryCharacters<TRes> {
  _CopyWithImpl$Query$QueryCharacters(
    this._instance,
    this._then,
  );

  final Query$QueryCharacters _instance;

  final TRes Function(Query$QueryCharacters) _then;

  static const _undefined = {};

  TRes call({
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$QueryCharacters(
        characters: characters == _undefined
            ? _instance.characters
            : (characters as Query$QueryCharacters$characters?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$QueryCharacters$characters<TRes> get characters {
    final local$characters = _instance.characters;
    return local$characters == null
        ? CopyWith$Query$QueryCharacters$characters.stub(_then(_instance))
        : CopyWith$Query$QueryCharacters$characters(
            local$characters, (e) => call(characters: e));
  }
}

class _CopyWithStubImpl$Query$QueryCharacters<TRes>
    implements CopyWith$Query$QueryCharacters<TRes> {
  _CopyWithStubImpl$Query$QueryCharacters(this._res);

  TRes _res;

  call({
    Query$QueryCharacters$characters? characters,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$QueryCharacters$characters<TRes> get characters =>
      CopyWith$Query$QueryCharacters$characters.stub(_res);
}

const documentNodeQueryQueryCharacters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'QueryCharacters'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'characters'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'results'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'image'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'status'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$QueryCharacters _parserFn$Query$QueryCharacters(
        Map<String, dynamic> data) =>
    Query$QueryCharacters.fromJson(data);

class Options$Query$QueryCharacters
    extends graphql.QueryOptions<Query$QueryCharacters> {
  Options$Query$QueryCharacters({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryQueryCharacters,
          parserFn: _parserFn$Query$QueryCharacters,
        );
}

class WatchOptions$Query$QueryCharacters
    extends graphql.WatchQueryOptions<Query$QueryCharacters> {
  WatchOptions$Query$QueryCharacters({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryQueryCharacters,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$QueryCharacters,
        );
}

class FetchMoreOptions$Query$QueryCharacters extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$QueryCharacters(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryQueryCharacters,
        );
}

extension ClientExtension$Query$QueryCharacters on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$QueryCharacters>> query$QueryCharacters(
          [Options$Query$QueryCharacters? options]) async =>
      await this.query(options ?? Options$Query$QueryCharacters());
  graphql.ObservableQuery<Query$QueryCharacters> watchQuery$QueryCharacters(
          [WatchOptions$Query$QueryCharacters? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$QueryCharacters());
  void writeQuery$QueryCharacters({
    required Query$QueryCharacters data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryQueryCharacters)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$QueryCharacters? readQuery$QueryCharacters({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryQueryCharacters)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$QueryCharacters.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$QueryCharacters> useQuery$QueryCharacters(
        [Options$Query$QueryCharacters? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$QueryCharacters());
graphql.ObservableQuery<Query$QueryCharacters> useWatchQuery$QueryCharacters(
        [WatchOptions$Query$QueryCharacters? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$QueryCharacters());

class Query$QueryCharacters$Widget
    extends graphql_flutter.Query<Query$QueryCharacters> {
  Query$QueryCharacters$Widget({
    widgets.Key? key,
    Options$Query$QueryCharacters? options,
    required graphql_flutter.QueryBuilder<Query$QueryCharacters> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$QueryCharacters(),
          builder: builder,
        );
}

class Query$QueryCharacters$characters {
  Query$QueryCharacters$characters({
    this.results,
    required this.$__typename,
  });

  factory Query$QueryCharacters$characters.fromJson(Map<String, dynamic> json) {
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query$QueryCharacters$characters(
      results: (l$results as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$QueryCharacters$characters$results.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$QueryCharacters$characters$results?>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$QueryCharacters$characters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$QueryCharacters$characters
    on Query$QueryCharacters$characters {
  CopyWith$Query$QueryCharacters$characters<Query$QueryCharacters$characters>
      get copyWith => CopyWith$Query$QueryCharacters$characters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$QueryCharacters$characters<TRes> {
  factory CopyWith$Query$QueryCharacters$characters(
    Query$QueryCharacters$characters instance,
    TRes Function(Query$QueryCharacters$characters) then,
  ) = _CopyWithImpl$Query$QueryCharacters$characters;

  factory CopyWith$Query$QueryCharacters$characters.stub(TRes res) =
      _CopyWithStubImpl$Query$QueryCharacters$characters;

  TRes call({
    List<Query$QueryCharacters$characters$results?>? results,
    String? $__typename,
  });
  TRes results(
      Iterable<Query$QueryCharacters$characters$results?>? Function(
              Iterable<
                  CopyWith$Query$QueryCharacters$characters$results<
                      Query$QueryCharacters$characters$results>?>?)
          _fn);
}

class _CopyWithImpl$Query$QueryCharacters$characters<TRes>
    implements CopyWith$Query$QueryCharacters$characters<TRes> {
  _CopyWithImpl$Query$QueryCharacters$characters(
    this._instance,
    this._then,
  );

  final Query$QueryCharacters$characters _instance;

  final TRes Function(Query$QueryCharacters$characters) _then;

  static const _undefined = {};

  TRes call({
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$QueryCharacters$characters(
        results: results == _undefined
            ? _instance.results
            : (results as List<Query$QueryCharacters$characters$results?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes results(
          Iterable<Query$QueryCharacters$characters$results?>? Function(
                  Iterable<
                      CopyWith$Query$QueryCharacters$characters$results<
                          Query$QueryCharacters$characters$results>?>?)
              _fn) =>
      call(
          results: _fn(_instance.results?.map((e) => e == null
              ? null
              : CopyWith$Query$QueryCharacters$characters$results(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$QueryCharacters$characters<TRes>
    implements CopyWith$Query$QueryCharacters$characters<TRes> {
  _CopyWithStubImpl$Query$QueryCharacters$characters(this._res);

  TRes _res;

  call({
    List<Query$QueryCharacters$characters$results?>? results,
    String? $__typename,
  }) =>
      _res;
  results(_fn) => _res;
}

class Query$QueryCharacters$characters$results {
  Query$QueryCharacters$characters$results({
    this.id,
    this.name,
    this.image,
    this.status,
    required this.$__typename,
  });

  factory Query$QueryCharacters$characters$results.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Query$QueryCharacters$characters$results(
      id: (l$id as String?),
      name: (l$name as String?),
      image: (l$image as String?),
      status: (l$status as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String? image;

  final String? status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$QueryCharacters$characters$results) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$QueryCharacters$characters$results
    on Query$QueryCharacters$characters$results {
  CopyWith$Query$QueryCharacters$characters$results<
          Query$QueryCharacters$characters$results>
      get copyWith => CopyWith$Query$QueryCharacters$characters$results(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$QueryCharacters$characters$results<TRes> {
  factory CopyWith$Query$QueryCharacters$characters$results(
    Query$QueryCharacters$characters$results instance,
    TRes Function(Query$QueryCharacters$characters$results) then,
  ) = _CopyWithImpl$Query$QueryCharacters$characters$results;

  factory CopyWith$Query$QueryCharacters$characters$results.stub(TRes res) =
      _CopyWithStubImpl$Query$QueryCharacters$characters$results;

  TRes call({
    String? id,
    String? name,
    String? image,
    String? status,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$QueryCharacters$characters$results<TRes>
    implements CopyWith$Query$QueryCharacters$characters$results<TRes> {
  _CopyWithImpl$Query$QueryCharacters$characters$results(
    this._instance,
    this._then,
  );

  final Query$QueryCharacters$characters$results _instance;

  final TRes Function(Query$QueryCharacters$characters$results) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$QueryCharacters$characters$results(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        image: image == _undefined ? _instance.image : (image as String?),
        status: status == _undefined ? _instance.status : (status as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$QueryCharacters$characters$results<TRes>
    implements CopyWith$Query$QueryCharacters$characters$results<TRes> {
  _CopyWithStubImpl$Query$QueryCharacters$characters$results(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? image,
    String? status,
    String? $__typename,
  }) =>
      _res;
}
