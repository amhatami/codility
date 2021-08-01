// Time Complexity: O(n), where n is the length of the collection.
// Space Complexity: O(n), where n is the length of the collection.

import Foundation
import Glibc

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    if A.count == K || K == 0 || A.count == 0 { return A }
    let rotation = K % A.count
    let range = 0...(A.count - 1 - rotation)
    let part1 = A[range]
    A.removeSubrange(range)
    return A + part1
}
