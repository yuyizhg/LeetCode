candies = [2,3,5,1,3]
extraCandies = 3

class Solution:
    def kidsWithCandies(self, candies: List[int], extraCandies: int) -> List[bool]:
        greatest = []

        gc = max(candies)
        for value in candies:
            if (value + extraCandies) >= gc:
                greatest.append(True)
            else:
                greatest.append(False)

        return greatest
