abstract class MvpView {
  void showLoading();

  void hideLoading();

  void openActivityOnTokenExpire();

  void onError(String message);

  void showMessage(String message);

  Future<bool> isNetworkConnected();

  void hideKeyboard();
}
