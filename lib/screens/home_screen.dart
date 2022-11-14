import 'package:flutter/material.dart';
import 'package:flutter_with_bloc_pattern_and_graphql/bloc/graphql_bloc.dart';
import 'package:flutter_with_bloc_pattern_and_graphql/model/home_model.dart';
import 'package:flutter_with_bloc_pattern_and_graphql/services/api_query.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  /// TODO: if anything goes wrong then use the bloc.getData() method inside the init method
  @override
  Widget build(BuildContext context) {
    bloc.getData(query);
    return Scaffold(
      body: StreamBuilder<ItemData>(
        stream: bloc.dataStream,
        builder: (context, AsyncSnapshot<ItemData> snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            if (snapshot.data!.dataList.isEmpty) {
              return const Text(
                'No Data',
              );
            }
            print('Snapshot: ${snapshot.data}');
            return ListView.builder(
                itemCount: snapshot.data!.dataList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text(
                      snapshot.data!.dataList[index].id.toString(),
                    ),
                    title: Text(
                      snapshot.data!.dataList[index].name.toString(),
                    ),
                  );
                });
          } else if (snapshot.hasError) {
            /// the below line of code is for deubgging purpose
            print('The error is: ${snapshot.error}');

            return Center(child: Text(snapshot.error.toString()));
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
