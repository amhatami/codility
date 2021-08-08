# Time Complexity : O(1)
# Space Complexity : O(n)

def solution(A, K):     
   if K == 0 or len(A)/K ==0:
      return A
   if K > len(A):
      K = K/len(A)
   A = A[len(A)-K:len(A)] + (A[0:len(A)-K])
   return A
