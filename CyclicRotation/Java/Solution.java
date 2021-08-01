//Time Complexity: O(N*K)
//Space Complexity: O(N*K)
// you can also use imports, for example:
// import java.util.*;

// you can write to stdout for debugging purposes, e.g.
// System.out.println("this is a debug message");

class Solution {
    public int[] solution(int[] A, int K) {
        //Rotate the given array by n times toward right   
        if (A.length == 0 )  return A;
        for(int i = 0; i < K; i++){    
            int j, last;    
            //Stores the last element of array    
            last = A[A.length-1];    
            
            for(j = A.length-1; j > 0; j--){    
                //Shift element of array by one    
                A[j] = A[j-1];    
            }    
            //Last element of array will be added to the start of array.    
            A[0] = last;    
        }    
        return A;
    }    
}

