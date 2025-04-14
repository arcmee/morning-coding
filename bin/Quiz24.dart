bool canConstruct(String ransomNote, String magazine) {
  List<String> ransomList =  ransomNote.split('');
  Map<String, int> magazineMap = magazineToMap(magazine);
  for(final s in ransomList){
    if(!isHas(s, magazineMap)){
      return false;
    }
  }

  return true;
}

Map<String, int> magazineToMap(String magazine){
  Map<String,int> retMap = {};
  return magazine.split('')
  .fold(retMap, (retMap, key) {
    if(retMap.containsKey(key)) {
      int a = retMap[key]!;
      retMap[key] = a + 1;
    } else {
      retMap[key] = 1;
    }
    return retMap;
  });
}

bool isHas(String key, Map<String, int> magazineMap){
  if(magazineMap.containsKey(key)){
    if(magazineMap[key]! <= 0) return false;
    int a = magazineMap[key]!;
    magazineMap[key] = a - 1;
    return true;
  } else {
    return false;
  }
}

void main() {
  print(canConstruct("aa", "aba"));
}