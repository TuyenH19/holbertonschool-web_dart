bool isPalindrome(String s) {
  if (s.length! < 3) {
    return false;
  } else {
      int middleIndex = s.length! ~/ 2;
      for (int i = 0; i < middleIndex; i++) {
        if (s[i] != s[s.length! - 1 -i]) {
          return false;
          break;
        } 
          continue;
      }
      return true;
  }
}
