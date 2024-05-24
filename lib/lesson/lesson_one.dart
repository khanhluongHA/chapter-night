List<int> twoSum(List<int> nums, int target) {
  for (var i = 0; i < nums.length; i++) {
    for (var j = 0; j < nums.length; j++) {
      if (nums[i] + nums[j] == target) {
        return [i, j];
      }
    }
  }
  return [];
}

void lessonOne() {
  List<int> nums = [2, 7, 11, 15];
  int target = 9;
  List<int> result = twoSum(nums, target);
  print(result);
}
