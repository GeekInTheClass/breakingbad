//: Playground - noun: a place where people can play

import UIKit


// 문제 1. 1부터 순서대로 10개의 홀수를 출력하세요.

func makeOddNumArray () {
    for i in 0...10 {
        print(i * 2 + 1)
    }
}

// Solution
var arr:[Int] = []
for i in 1...10{arr.append(i)}

/*************************************************/
print("문제1")
arr.map{ print($0 * 2 - 1) }
/*************************************************/

// 문제 2. *의 개수가 하나씩 증가하는 string 10개를 배열에 넣으세요. (*, **, ..., **********)

func star() -> String{
    var string: String = ""
    for a in 1...5 {
        for _ in 1...a {
            string += "*"
        }
        string += "\n"
    }
    return string
}

//var bb: String = star()

/*************************************************/
var bb = arr.reduce("", {(i: String, j: Int) -> String in i + String(Array<Character>(repeating:Character("*"), count:j)) + "\n"})
print("\n문제2")
print(bb)
/*************************************************/

// 문제 3. 13부터 숫자 7개를 더하세요.


var sum:Int = 0
for a in 13...20 {
    sum += a
}

var c:[Int] = []
for a in 13...20 {
    c.append(a)
}

/*************************************************/
print("\n문제3")
print(c.reduce(0, {(i: Int, j: Int) -> Int in i+j}))
/*************************************************/

// 문제 4. 구구단 12단을 출력하세요. (12*9까지, 답만)

func gugu () {
    for i in 1...9 {
        print(i * 12)
    }
}

/*************************************************/
var d = [1, 2, 3, 4, 5, 6, 7, 8, 9]
print("\n문제4")
d.map{ print($0 * 12) }
/*************************************************/

// 100 이하의 소수를 모두 출력하세요.

var e:[Int] = []
for i in 1...100{e.append(i)}

var primeNumbers : [Int] = []
func primeNum () {
    
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
}
/*************************************************/
print("\n문제5")
primeNum()
print(e.filter({ (v: Int) -> (Bool) in
    if primeNumbers.contains(v){ return true }
    return false
}))
/*************************************************/