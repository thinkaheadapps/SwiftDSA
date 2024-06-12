//: [Previous](@previous)

import Foundation

/*
 Factor Definition:- i is factor of N if N % i == 0
 Problem Statement- Given N, count the factors of N.
 Brute force solution- Find all the factors from 1 to N
 Time Complexity - O(N)
 */

func checkFacor(number : Int, num : Int)-> Bool {
    if(number % num == 0) {
        return true;
    }
    else {
        return false;
    }
}

func countFactors(number: Int)-> [Int] {
    var factors:[Int] = []
    var numbersFactors : Int = 0
    for num in 1...number {
        if (checkFacor(number: number, num: num)) {
            numbersFactors += numbersFactors
            factors.append(num)
        }
    }
    return factors
}

var resultArr = countFactors(number: 10)
print(resultArr)
print("Number of factors = \(resultArr.count)")

let factors = countFactors(number: 30)
print(factors)
print("No of factors = \(factors.count)")

