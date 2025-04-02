bool containsNearbyDuplicate(List<int> nums, int k) {

  for(int i = 0; i < nums.length ; i++){
    for(int j = 1; j <= k; j++){
      if(i+j < nums.length){

        if(nums[i] == nums[i+j]){
          return true;
        }
      }
    }
  }

  // for(var num in nums){
  //   if(isArraySatisfed(getDuplication(nums, num), k)){
  //     return true;
  //   }
  // }

  return false;
}

List<int> getDuplication(List<int> nums, int num){
  List<int> retArray = [];
  for(int i = 0 ; i < nums.length; i++){
    if(nums[i] == num){
      retArray.add(i);
    }
  }
  return retArray;
}

bool isArraySatisfed(List<int> nums, int condition){
  for( int num1 in nums ){
    for(int num2 in nums){
      if((num1 - num2).abs() <= condition && (num1 - num2).abs() != 0 ){
        return true;
      }
    }
  }
  return false;
}

void main() {
  // print(containsNearbyDuplicate([1,2,3,1], 3));
  // print('---------------------');
  // print(containsNearbyDuplicate([1,0,1,1], 1));
  // print('---------------------');
  // print(containsNearbyDuplicate([1,2,3,1,2,3], 2));
  // print('---------------------');
  // print(containsNearbyDuplicate([1,4,2,3,1,2], 2));
  // print('---------------------');
  print(containsNearbyDuplicate([99, 99], 2));
}
