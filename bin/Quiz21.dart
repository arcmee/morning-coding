bool wordPattern(String pattern, String s) {
  List<String> words = s.split(' ');
  if(words.length != pattern.length) return false;
  Map<String, String> compareMap = {};
  
  
  for(int i = 0; i < pattern.length; ++i){
    if(!compareMap.containsKey(pattern[i])){
      if(!compareMap.containsValue(words[i])){
        compareMap.addAll({pattern[i] : words[i]});
      } else {
        return false;
      }
    } else {
      if(compareMap[pattern[i]] != words[i]){
        return false;
      }
    }
  }

  return true;
}



void main() {
  print(wordPattern("abba", "dog cat cat dog"));
  print(wordPattern("abba", "dog cat cat fish"));
  print(wordPattern("abba", "dog dog dog dog"));
}
