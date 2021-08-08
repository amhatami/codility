// Time Complexity: O(1), where n is the length of the collection.
// Space Complexity: O(n), where n is the length of the collection.

import Foundation
import Glibc

public func solution(_ X : Int, _ A : inout [Int]) -> Int {
    var arr = Array(repeating: 0, count: X)
    let expectedSum = X * (X + 1) / 2
    var sum = 0
    for (i, num) in A.enumerated() {
        if arr[num - 1] == 0 {
            arr[num - 1] = num
            sum += num
            if sum == expectedSum {
                return i
            }
        }
    }
    return -1
}
