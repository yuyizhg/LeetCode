class Solution:
    def runningSum(self, nums: List[int]) -> List[int]:

        output = [None] * len(nums)

        for index, _ in enumerate(nums):
            result = 0
            i = 0
            while i <= index:
                result = result + nums[i]
                i = i + 1

            output[index] = result

        return output