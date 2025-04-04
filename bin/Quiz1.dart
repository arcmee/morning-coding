// import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main(List<String> arguments) {
  List<int> nums = [3, 3];
  int target = 6;
  print(twoSum(nums, target));
}

List<int> twoSum(List<int> nums, int target) {
  List<int> used = [];
  for(int i = 0; i < nums.length; ++i)
  {
    used.add(i);
    for(int j = 0; j < nums.length; ++j){
      if(!used.contains(j)){
        if(nums[i] + nums[j] == target){
          return [nums[i], nums[j]];
        }
      }
    }
  }
  return [];
}