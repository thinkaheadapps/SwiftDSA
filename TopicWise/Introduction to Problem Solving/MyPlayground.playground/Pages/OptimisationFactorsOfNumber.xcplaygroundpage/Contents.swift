//: [Previous](@previous)

import Foundation

/*
 Factor Definition:- i is factor of N if N % i == 0
 Problem Statement- Given N, count the factors of N.
 Brute force solution- Find all the factors from 1 to N
 Time Complexity - O(N)
 
 Optimized :- To reduce the number of iterations , we use the property that if i is a factor of N, then N/i is also a fattor .We only need to iterate up to squareroot N.
 Example:-
 
 i    N / i
 1    24
 2    12
 3    8
 4    6
 6    4
 8    3
 12   2
 24   1

 TC - O(squareroot N)
 */

func checkFactor(number: Int, num : Int)-> Bool {
    if(number % num*num == 0) {
        return true;
    } else {
        return false
    }
}

func findTotalFactors(number: Int) -> [Int] {
    var factorsList :[Int] = []
    for num in 1...number {
        if(checkFactor(number: number, num: num)){
            factorsList.append(num)
        }
    }
    
    return factorsList
}

let result = findTotalFactors(number: 10)
print("Total number od factos = \(result.count)")
print("List of numbers = \(result)")
