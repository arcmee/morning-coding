void moveZeroes(List<int> nums) {
  int l = nums.length;
  nums.removeWhere((element) => element == 0);

  int l2 = l-nums.length;

  for(int i = 0; i < l2; ++i){
    print(i);
    nums.add(0);
  }
}

void moveZeroes2(List<int> nums) {
  int j = 0;
  for(int i = 0; i < nums.length; ++i){
    if(nums[j] == 0){
      nums.removeAt(j);
      nums.add(0);
    }
    else{
      ++j;
    }
  }
  print(nums);
}

void main() {
  // moveZeroes2([0,1,0,3,12]);
  // moveZeroes2([0]);
  moveZeroes2([0, 0, 1]);
}