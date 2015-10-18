//: Playground - noun: a place where people can play

import Foundation

func tablesOfTwo(x: Int) -> Int {
    return 2 * x;
}

func tablesOfThree(x: Int) -> Int {
    return 3 * x;
}


tablesOfTwo(3)
tablesOfThree(4)

func genericTables (x: Int) -> (Int) -> Int {
//    func innerFuncion(y : Int) -> Int {
//        return x * y;
//    }
    
    return { y in x * y }
    
//    return innerFuncion;
}

var tablesOfTwoF = genericTables(2)
tablesOfTwoF(3)

var tablesOfThreeF = genericTables(3)
tablesOfThreeF(4)


func genericTablesCurrying (x: Int)(y: Int) ->  Int {
    return x * y;
}

var tableOfTwoCurring = genericTablesCurrying(2)
tableOfTwoCurring(y: 2)