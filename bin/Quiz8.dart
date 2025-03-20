
void main(){
  merge([1,2,3,0,0,0],3,[2,5,6],3);
}

void merge(List<int> nums1, int m, List<int> nums2, int n) {
  if(nums1.isNotEmpty){
    nums1.removeRange(m, nums1.length);
  }
  if(nums2.isNotEmpty){
    nums2.removeRange(n, nums2.length);
  }
  nums1.addAll(nums2);
  nums1.sort();
  print(nums1);
}