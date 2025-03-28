
bool isHappy(int n) {
  return check(n, {});
}

bool check(int n, Set<int> accumulation){
  int sum = n.toString().split('').fold(0, (prev, next){
  int a =  prev + int.parse(next)*int.parse(next);
    return a;
  });
  if(sum == 1){
    return true;
  } else if( accumulation.contains(sum) ){
    return false;
  } else {
    accumulation.add(sum);
    return check(sum, accumulation);
  }
}

void main(){
  print(isHappy(19));
  //  Set<int> accumulation = {68};
  //  print(accumulation.contains(82));
}