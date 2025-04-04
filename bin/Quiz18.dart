
List<String> summaryRanges(List<int> nums) {
  if(nums.isEmpty) return [];

  List<String> rangeArray= [];
  
  for(int i = 0 ; i < nums.length; i++){
    int startIndex = i;
    i = getSequence(i, nums);
    print(i);
    rangeArray.add(getRangeString(nums[startIndex], nums[i]));
  }

  return rangeArray;
}

int getSequence(int startIndex, List<int> nums){
  int current = nums[startIndex];
  int retIndex = startIndex;
  for(int i = startIndex + 1; i < nums.length; i++){
    if(nums[i] == current + 1){
      current = nums[i];
      retIndex = i;
    } else {
      return retIndex;
    }
  }
  return startIndex;
}

String getRangeString(int start, int end) {
  if(start == end){
    return '$start';
  }
  return '$start->$end';
}




void main() {
  print(summaryRanges([0,2,3,4,6,8,9]));
}