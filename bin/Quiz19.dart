bool isAnagram(String s, String t) {
  if(s.length != t.length) return false;
  Map<String, int> baseMap = numbersOfWord(s);
  Map<String, int> compareMap = numbersOfWord(t);

  for(String key in baseMap.keys){
    if(baseMap[key] != compareMap[key]){
      return false;
    }
  }

  return true;
}

Map<String, int> numbersOfWord(String s) {
  if(s.isEmpty) return {};
  Map<String, int> retMap = {};
  s.split('').forEach((element) {
    if(retMap.containsKey(element)){
      int a = retMap[element]!;
      retMap[element] = a + 1;
    } else {
      retMap.addAll({element:1});
    }
  });
  return retMap;
}

void main() {
  print(isAnagram("anagram", "nagaram"));
}