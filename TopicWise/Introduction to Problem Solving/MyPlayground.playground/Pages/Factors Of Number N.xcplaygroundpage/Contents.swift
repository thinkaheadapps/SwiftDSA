//: [Previous](@previous)

import Foundation

/*
 We say i is a factor of N if i divides N completely, i.e the remainder is 0.
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
    for num in 1...number {
        if (checkFacor(number: number, num: num)) {
            factors.append(num)
        }
    }
    return factors
}

var resultArr = countFactors(number: 10)
print(resultArr)
