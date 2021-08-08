// Time Complexity: O(1), where n is the length of the collection.
// Space Complexity: O(1), where n is the length of the collection.

import Foundation
import Glibc

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    if X == Y { return 0 }
    var count = 0
    if (Y - X) % D == 0 {
        count = (Y - X) / D
    }
    else {
        count = (Y - X) / D + 1
    }
    return count
}
