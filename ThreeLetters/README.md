# String Without AAA or BBB
### Medium
Given two integers a and b, return any string s such that:

s has length a + b and contains exactly a 'a' letters, and exactly b 'b' letters,
The substring 'aaa' does not occur in s, and
The substring 'bbb' does not occur in s.
 

### Example 1:

Input: a = 1, b = 2
Output: "abb"
Explanation: "abb", "bab" and "bba" are all correct answers.

### Example 2:

Input: a = 4, b = 1
Output: "aabaa"
 

### Constraints:

0 <= a, b <= 100
It is guaranteed such an s exists for the given a and b.

### Approach 1: Greedy
Intuition

Intuitively, we should write the most common letter first. For example, if we have A = 6, B = 2, we want to write 'aabaabaa'. The only time we don't write the most common letter is if the last two letters we have written are also the most common letter

Algorithm

Let's maintain A, B: the number of 'a' and 'b''s left to write.

If we have already written the most common letter twice, we'll write the other letter. Otherwise, we'll write the most common letter.


# ThreeLetters

Write a function solution that, given two integers A and B, returns a string containing exactly A letters 'a' and exactly B letters 'b' with no three consecutive letters being the same (in other words, neither "aaa" nor "bbb" may occur in the returned string).

## Examples:

1. Given A = 5 and B = 3, your function may return "aabaabab". Note that "abaabbaa" would also be a correct answer. Your function may return any correct answer.

2. Given A = 3 and B = 3, your function should return "ababab", "aababb", "abaabb" or any of several other strings.

3. Given A = 1 and B = 4, your function should return "bbabb", which is the only correct answer in this case.

### Assume that:

A and B are integers within the range [0..100];
at least one solution exists for the given A and B.
In your solution, focus on correctness. The performance of your solution will not be the focus of the assessment.

Copyright 2009–2021 by Codility Limited. All Rights Reserved. Unauthorized copying, publication or disclosure prohibited.




### Ref
https://leetcode.com/problems/string-without-aaa-or-bbb/solution/
https://math.stackexchange.com/questions/1944807/arrangements-of-a-a-a-b-b-b-c-c-c-in-which-no-three-consecutive-letters-are-the
