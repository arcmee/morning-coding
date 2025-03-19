
void main(){
  
  print(lengthOfLastWord("   fly me   to   the moon  "));
  print(lengthOfLastWord("luffy is still joyboy"));
}

int lengthOfLastWord(String s) {
  return s.split(' ').where((str) => str.isNotEmpty ).last.length;
}