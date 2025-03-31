bool isIsomorphic(String s, String t) {
  if(s.length != t.length){
    return false;
  }

  Map<String, String> compareMap = {};

  for(int i = 0; i < s.length ;  i++ ){
    if(!compareMap.containsValue(t[i])) {
      compareMap.addAll({s[i]: t[i]});
    }
  }

  String newt  = '';

  for(var a in s.split('')){
    if(compareMap.containsKey(a) && compareMap[a] != null){
        newt += compareMap[a]!;
    }
  }
  
  return newt == t;
}

void main() {
  print(isIsomorphic("egg", "add"));
  print('--------------');
  print(isIsomorphic("foo", "bar"));
  print('--------------');
  print(isIsomorphic("paper", "title"));
  print('--------------');
  print(isIsomorphic("badc", "baba"));
  print('--------------');
}