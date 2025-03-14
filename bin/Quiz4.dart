

void main()
{
  print(removeDuplicates([0,0,1,1,1,2,2,3,3,4]));
}

int removeDuplicates(List<int> nums) {

  Set<int> numSet = nums.toSet();
  numSet.forEach((s) {
    nums.removeWhere((l) => s == l);
    nums.add(s);
  });
  print(nums);
  
  return nums.length;
}

