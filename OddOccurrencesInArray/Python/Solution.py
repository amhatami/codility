# Time complexity: O(N) or O(N*log(N))
# Space complexity: O(N)

def solution(A):
    if len(A) == 1:
        return A[0]
    A = sorted(A)  #O(N*log(N))
    for i in range(0 , len (A) , 2): #O(N)
        if i+1 == len(A):
            return A[i]
                if A[i] != A[i+1]:
                    return A[i]
