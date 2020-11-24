nums = [1, 2, 3, 4]

class Solution:
    def runningSum(self, nums: List[int]) -> List[int]:

        runningSum = [None] * len(nums)
        runningSum[0] = nums[0]
        for index, value in enumerate(nums):
            if index != 0:
                runningSum[index] = runningSum[(index - 1)] + nums[index]
                index = index + 1

        return runningSum