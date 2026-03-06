void outer(String name, String id) {

  String inner() {
    var fullNameList = name.split(" ");
    var firstName = fullNameList[0];
    var lastNameLetter = fullNameList[1].substring(0, 1);

    return '$lastNameLetter.$firstName';
  };

  print('Hello Agent ${inner()} your id is $id');
}
