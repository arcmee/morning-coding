
void main(){
  print(longestCommonPrefix(["fawefawefawefvwaefv","fawefawefawevfawefv","fawefawefawevfawvewf","fawefaweffavwefvawv","fawefawefafwevfawev", 'fawefawefawfefvawev','fawefawefwaefvwevfa']));
}

String longestCommonPrefix(List<String> strs) {
  List<List<String>> strList = [];

  for(String str in strs){
    List<String> temp = [];
    for(int i = 0; i < str.length ; ++i){
      temp.add(str[i]);
    }
    strList.add(temp);
  }
  String retStr = '';

  List<String> first = strList[0];
  int curIndex = 0;
  bool matched = false;

  for(String s in first){
    for(int i = 1; i < strList.length ; ++i){
      if(curIndex > strList[i].length) break;
      matched = strList[i][curIndex] == first[curIndex];
    }
    if(matched){
      retStr += first[curIndex++];
    }
  }

  return retStr;
}