void main(){
  print(listOfRomeToInt(stringToArray('III')));
  print(listOfRomeToInt(stringToArray('MCMXCIV')));
  print(listOfRomeToInt(stringToArray('LVIII')));
}

List<String> stringToArray(String str) {
  List<String> retStr = List<String>.generate(
    str.length,
    (index) => str[index]
  );

  return retStr;
}

int listOfRomeToInt(List<String> array){
  int result = 0;
  int firstIndexI = array.indexWhere((rome) => rome =='I');
  int firstIndexX = array.indexWhere((rome) => rome =='X');
  int firstIndexC = array.indexWhere((rome) => rome =='C');
  if(firstIndexI + 1 <= array.length && firstIndexI > 0){
    if(array[firstIndexI + 1] != array[firstIndexI]){
      result -= 1;
      array.removeAt(firstIndexI);
    }
  }
  if(firstIndexX + 1 <= array.length && firstIndexX > 0){
    if(array[firstIndexX + 1] != array[firstIndexX]){
      result -= 10;
      array[firstIndexX] = '';
      array.removeAt(firstIndexX);
    }
  }
  if(firstIndexC + 1 <= array.length && firstIndexC > 0){
    if(array[firstIndexC + 1] != array[firstIndexC]){
      result -= 100;
      array.removeAt(firstIndexC);
    }
  }
  array.fold(result, (prev, next) {
    switch(next){
      case 'I':
      return result += 1;
      case 'V':
      return result += 5;
      case 'X':
      return result += 10;
      case 'L':
      return result += 50;
      case 'C':
      return result += 100;
      case 'D':
      return result += 500;
      case 'M':
      return result += 1000;
      default:
      return result;
    }
  });
  

  return result;
}