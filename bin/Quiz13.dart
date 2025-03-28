int majorityElement(List<int> nums) {
  Map<int,int> numsMap = {};
  for(int num in nums){
    if(numsMap[num] == null){
      numsMap[num] = 1;
    } else {
      numsMap[num] = numsMap[num]! + 1;
    }
  }
  int retKey = 0;
  int compareValue = 0;
  numsMap.forEach(
    (key, value) {
      if(value > compareValue){
        compareValue = value;
        retKey = key;
      }
    }
  );

  return retKey;
}

void main(){
  // print(majorityElement([2,2,1,1,1,2,2]));
  print(majorityElement([1]));
}