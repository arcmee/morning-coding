

void main(){
  removeElement([3,2,2,3], 3);
}

int removeElement(List<int> nums, int val) {
  nums.removeWhere((i) => i == val);
  return nums.length;
}