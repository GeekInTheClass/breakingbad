//: Playground - noun: a place where people can play

import UIKit


// 문제 1. 1부터 순서대로 10개의 홀수를 출력하세요.

func makeOddNumArray () {
    for i in 0...10 {
        print(i * 2 + 1)
    }
}

// 문제 2. *의 개수가 하나씩 증가하는 string 10개를 배열에 넣으세요. (*, **, ..., **********)

var a: [Int] = [1,2,3,4,5]


func star() -> String{
    var string: String = ""
    for a in 1...5 {
        for b in 1...a {
            string += "*"
        }
        string += "\n"
    }
    return string
}

var bb: String = star()

bb

// 문제 3. 13부터 숫자 7개를 더하세요.

var sum:Int = 0
for a in 13...20 {
    sum += a
}


// 문제 4. 구구단 12단을 출력하세요. (12*9까지, 답만)

func gugu () {
    for i in 1...9 {
        print(i * 12)
    }
}

// 100 이하의 소수를 모두 출력하세요.

func primeNum () {
    var primeNumbers : [Int] = []
    
    for i in 1...100 {
        if (i == 1) {
            continue
        }
            
        else if (i == 2) {
            primeNumbers += [2]
        }
            
        else {
            for j in 2...(i - 1) {
                if (i % j == 0) {
                    break;
                }
                
                if (j == (i - 1)) {
                    primeNumbers += [i]
                }
            }
        }
    }
    
    print(primeNumbers)
}

