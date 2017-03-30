//: Playground - noun: a place where people can play

import UIKit

let array = [1, 3, 5, 4, 2]

array.sorted(by:{ (a: Int, b) -> Bool in
    return a < b })

//별찎기

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

// 3번

var sum:Int = 0
for a in 13...20 {
    sum += a
}

// 5번 100 이하의 소수로 이루어진 배열을 만드시오.
var result: [Int] = []
var chk: Bool = true


for num in 2...100 {
    for a in 2...num{
        if(num == a) {
            break
        }
        if num % a != 0 {
            chk = true
        }
        else{
            chk = false
            break
        }
    }
    if chk == true {
        result += [num]
        chk = false
    }
}

result



