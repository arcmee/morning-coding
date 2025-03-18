
void main(){
  print(strStr("sadbutsad", "sad"));
  print(strStr("leetcode", "leeto"));
}

int strStr(String haystack, String needle) {
  return haystack.indexOf(needle);
}