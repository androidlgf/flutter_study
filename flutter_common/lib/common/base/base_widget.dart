import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_common/common/common_index.dart';

//基类Widget/
abstract class BaseStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return null;
  }

  void showLoading(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return LoadDialog();
        });
  }

  void hideLoading(BuildContext context) {
    Navigator.pop(context);
  }

  //Toast提示/
  void showMessage(String message) {
    Fluttertoast.showToast(msg: message ?? '');
  }

//底部错误提示/
  void onError(BuildContext context, String errorInfo) {
    final SnackBar snackBar = new SnackBar(content: new Text(errorInfo ?? ''));
    Scaffold.of(context).showSnackBar(snackBar);
  }

  //关闭键盘/
  void hideKeyboard() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }

  Future<bool> isNetworkConnected() {
    return NetworkConnectUtil.isNetworkConnected();
  }
}
