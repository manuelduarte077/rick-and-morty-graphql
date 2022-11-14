class ItemData {
  ItemData.fromJSON(data) {
    try {
      if (data != null) {
        for (final index = 0; index < data.length; index++) {
          dataList.add(HomeModel(
            id: data[index]['id'],
            name: data[index]['name'],
            status: data[index]['status'],
          ));
        }
      }
    } catch (e) {
      print('errors: $e');
    }
  }
  List<HomeModel> dataList = [];
}

/// the code below is used to create a class to act as a model for getting the
/// data from the api
class HomeModel {
  HomeModel({this.status, this.id, this.name});

  /// the property below is used to get the id
  String? id;

  /// the property below is used to get the name
  String? name;

  /// the property below is used to get the status
  String? status;
}
