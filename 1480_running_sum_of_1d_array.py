nums = [1, 2, 3, 4]

class Solution:
    def runningSum(self, nums: List[int]) -> List[int]:

        num = [None] * len(nums)
        num[0] = nums[0]
        for index, value in enumerate(nums):
            if index != 0:
                num[index] = num[(index - 1)] + nums[index]

        return num