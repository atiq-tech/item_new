// void main() {
//   print("Line 1");
//   Future.delayed(Duration(seconds: 5), () {
//     print("Line 2");
//   });
//   print("Line 3");
//   Future.delayed(Duration(seconds: 10), () {
//     print("Line 4");
//   });
//   print("Line 5");
// }

// void main() {
//   print("It is line 01");
//   Future<String> x = Future.delayed(Duration(seconds: 4), () {
//     return "Yes i am line 02";
//   });
//   x.then((value) {
//     print(value);
//     print("It is line 03");
//     print("It is line 04");
//   });

//   print("It is line 05");
//   print("It is line 06");
// }

//
// void main() {
//   print("Line 1");
//   Future<String> x = Future.error("Error data");
//   x.then((value) {
//     print(value);
//   }).onError((error, stackTrace) {
//     print("Error getting data");
//   });
//   print("Line 6");
//   Future<String> y = Future.value("Success data");
//   y.then((value) {
//     print(value);
//     print("Line 3");
//   });
//   print("Line 4");
// }

//
//
// void main() async {
//   print("It is Line 01");
//   await Future.delayed(Duration(seconds: 4), () {
//     print("It is Line 02");
//   });
//   print("It is Line 03");
//   print("It is Line 04");
// }
