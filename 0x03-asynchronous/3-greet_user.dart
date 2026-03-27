import '3-util.dart';

Future<String> greetUser() async {
  try {
    final userData = await fetchUserData();
    final username = userData.split('"')[7];
    return 'Hello $username';
  } catch (e) {
    return ("error caught: $e");
  }
}

Future<String> loginUser() async {
  try {
    final check = await checkCredentials();
    if (check == true) {
      print ("There is a user: true");
      return await greetUser();
    } else {
      print ("There is a user: false");
      return ("Wrong credentials");
    }
  } catch (e) {
    return ("error caught: $e");
  }
}
