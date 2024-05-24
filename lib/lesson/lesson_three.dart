import 'dart:async';
import 'dart:core';

void printCurrentTime() {
  //tạo stream để phát ra sự kiện mỗi giây
  Stream<DateTime> locketStream =
      Stream.periodic(Duration(seconds: 1), (_) => DateTime.now());
  // ignore: unused_local_variable
  StreamSubscription<DateTime> subscription = locketStream.listen((event) {
    print(event);
  });
}

void printTimes() {
  printCurrentTime();
}
