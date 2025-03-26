int singleNumber(List<int> nums) {
  return removePair(nums)[0];
}

List<int> removePair(List<int> nums){
  print(nums);
  if( nums.lastIndexOf(nums[0]) == 0){
    List<int> retList = [nums[0]];
    return retList;
  }
  nums.removeAt(nums.lastIndexOf(nums[0]));
  nums.removeAt(0);
  print(nums);
  return removePair(nums);
}

void main(){
  // print(singleNumber([2,2,1]));
  print(singleNumber([-336,513,-560,-481,-174,101,-997,40,-527,-784,-283,-336,513,-560,-481,-174,101,-997,40,-527,-784,-283,354]));
  // var a = [-336,513,-560,-481,-174,101,-997,40,-527,-784,-283,-336,513,-560,-481,-174,101,-997,40,-527,-784,-283,354];
  // a.removeAt(0);

  // a.removeAt(a.lastIndexOf(a[0]));
  // print(a);
  // print(singleNumber([1]));
  
}
