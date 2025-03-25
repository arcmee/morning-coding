

void main(){
  print(isPalindrome("A man, a plan, a canal: Panama"));
  print(isPalindrome("race a car"));
  print(isPalindrome(" "));

}

bool isPalindrome(String s) {
  String newS = s.trim().replaceAll(RegExp("[^\uAC00-\uD7A30-9a-zA-Z]"), '').toLowerCase();

  for(int i = 0; i < newS.length/2; i++){
    if(newS[i] != newS[newS.length - i - 1]){
      return false;
    }
  }

  return true;
}