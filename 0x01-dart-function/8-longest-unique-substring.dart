String longestUniqueSubstring(String str) {
  Map<String, int> lastIndex = {};
  int start = 0, maxLength = 0;
  String result = '';

  for (int end = 0; end < str.length; end++) {
    String char = str[end];
    if (lastIndex.containsKey(char) && lastIndex[char]! >= start) {
      start = lastIndex[char]! + 1;
    }

    lastIndex[char] = end;

    if (end - start + 1 > maxLength) {
      maxLength = end - start + 1;
      result = str.substring(start, end + 1);
    }
  }
  
  return result;
}
