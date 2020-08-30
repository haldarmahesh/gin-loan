class MockHttpClient<T> {
  Future<T> getData(T data) {
    Future.delayed(Duration(milliseconds: 2000));
    return Future.value(data);
  }
}
