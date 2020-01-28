import 'dart:async';
import 'dart:convert';

import 'package:findjoy/home_screen/model/home_screen_data_model.dart';
import 'package:findjoy/home_screen/view_model/abstract_home_screen_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class HomeScreenViewModel implements AbstractHomeScreenViewModel {
  HomeScreenViewModel() {
    _loadJson().then((value) {
      final _response = json.decode(value);
      _controller.sink.add(HomeScreenDataModel.convertFromJson(_response));
      debugPrint("loaded json and added to stream");
    });
  }

  Future _loadJson() async {
    debugPrint("loading json from disk");
    return await rootBundle.loadString('assets/text_res/text_res.json');
  }

  final _controller = StreamController<HomeScreenDataModel>();
  Stream<HomeScreenDataModel> get dataStream => _controller.stream;

  @override
  void dispose() {
    _controller.close();
  }
}
