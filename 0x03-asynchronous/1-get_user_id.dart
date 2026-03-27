import '1-util.dart';

Future<String> getUserId() async {
  final userData = await fetchUserData();
  final userId = userData.split('"')[3];
  return userId;
}