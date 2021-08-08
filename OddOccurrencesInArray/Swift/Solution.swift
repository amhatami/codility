//Time complexity: O(N) or O(N*log(N))
//Space complexity: O(N)

import Foundation
import Glibc

public func solution(_ A : inout [Int]) -> Int {
    if A.count == 1 {
        return A[0]
    }
    var inputElementCountDic = [Int: Int]()
    
    for element in A {
        if let count = inputElementCountDic[element] {
            inputElementCountDic[element] = count + 1
        } else {
            inputElementCountDic[element] = 1
        }
    }//O(N)
    //print(inputElementCountDic.debugDescription)
    //if occurs odd number of times, we found the unpaired value - no need to continue checking
    let solution = inputElementCountDic.first { (_, count) -> Bool in
        return count%2 != 0
    } //O(N*log(N))
    return solution!.key
}
