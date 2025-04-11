List<String> vowels = ['a','e','i','o','u','A','E','I','O','U'];
String reverseVowels(String s) {
  List<String> a = s.split('');
  int front = 0;
  int rear = s.length - 1;
  while(front <= rear){
    front = findFrontIndexOfVowel(front, s);
    rear = findRearIndexOfVowel(rear, s);

    if(front > rear) continue;

    print('front : $front');
    print('rear : $rear');

    a[front] = s[rear];
    a[rear] = s[front];
    
    if(front < s.length) front++; 

    if(rear > 0) rear--;
  }
  
  return a.join();
}

int findFrontIndexOfVowel(int index, String s){
  for(int i = index; i < s.length; i++){
    if(vowels.contains(s[i])) {
      return i;
    }
  }
  return s.length - 1;
}

int findRearIndexOfVowel(int index, String s){
  for(int i = index; i > 0; i--){
    if(vowels.contains(s[i])) {
      return i;
    }
  }
  return 0;
}

void main() {
  // print(reverseVowels("IceCreAm"));
  // print(reverseVowels(" "));
  print(reverseVowels(".,"));
}