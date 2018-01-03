# Digit Match
Number of matching digits starting with the least significant digit in two integers.

## Exercise
* Design and implement a method that accepts two non-negative integers as parameters and that returns the number of digits that match in the two integers. Two digits match if they are equal and have the same position relative to the end of the number (i.e. starting with the ones digit). In other words, the method should compare the last digits of each number, the second-to-last digits of each number, the third-to-last digits of each number, and so forth, counting how many pairs match.
* For example, for  input values of (1072503891, 62530841), the method would compare as follows:
```
1 0 7 2 5 0 3 8 9 1
    | | | | | | | |
    6 2 5 3 0 8 4 1
```
The method should return 4 in this case because 4 of these pairs match (2-2, 5-5, 8-8, and 1-1).
* Share and explain the time and space complexities for your solution.
* If you think of multiple approaches to solve the problem, implement the solution which minimizes space complexity. Explain the other approaches, and your decision in comments above the code.
**Note**: Do not use Ruby provided functionality.
