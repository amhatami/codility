// Time Complexity: O(N) or O(N * log(N)), where n is the length of the collection.
// Space Complexity: O(n), where n is the length of the collection.

import Foundation
import Glibc

public func solution(_ A : inout [Int]) -> Int {
    let n = A.count + 1 // total elements including missing number
    // https://math.stackexchange.com/questions/2260/proof-for-formula-for-sum-of-sequence-123-ldotsn
    let sumN = n * (n + 1) / 2 // well know formula to get sums of sequence number from 1 .. N
    let sumA = A.reduce(0, +)
    return sumN - sumA // subtract and the balance is missing number
}
