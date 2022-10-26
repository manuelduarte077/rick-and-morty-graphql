// the variable below contains the query that we want to get from the api using
// graphql
String query = r'''
  query {
    characters(page: 1) {
      results {
        id
        name
        status
      }
    }
  }
''';
