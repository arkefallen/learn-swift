import Foundation

struct TaskScheduler {
    let prepare: () -> Void
    let execute: () -> Void
    let cleanup: () -> Void
    let finish: () -> Void
    
    func start() {
        prepare()
        execute()
        cleanup()
        finish()
    }
}

let scheduler = TaskScheduler {
    print("Preparing")
} execute: {
    print("Executing")
} cleanup: {
    print("Cleaning Up")
} finish: {
    print("Wrapping Up")
}

func divisibleBySeven(_ num: Int) -> String {
  return num % 7 == 0 ? "I am \(num) and I am divisible by 7" : "I am \(num) and I am not divisible by 7"
}

func divisibleByDivisor(_ num: Int, _ divisor: Int) -> String {
    return num % divisor == 0 ? "I am \(num) and I am divisible by \(divisor)" : "I am \(num) and I am not divisible by \(divisor)"
}

func divisibleByDivisorFromRange( num: Int, minDiv: Int, maxDiv: Int) {
    for divisor in minDiv...maxDiv {
        if num % divisor == 0 {
            print("I am \(num) and I am divisible by \(divisor)")
        } else {
            print("I am \(num) and I am not divisible by \(divisor)")
        }
    }
}

func powerFunc(_ base : Int, _ power: Int) -> Any? {
    if ( base == 0 ) {
        return 0
    } else {
        if (power > 0) {
            var result = base
            for _ in 1...power-1 {
                result *= base
            }
            return result
        } else if (power == 0) {
            return 1
        } else {
            return nil
        }
    }
}

func sumPowers(num: Int, power: Int) -> Int? {
    if (num < 0 || power < 0) {
        return nil
    }
    var result = 0
    for base in 1...num {
        var resultBase = base
        for _ in 1...power-1 {
            resultBase *= base
        }
        result+=resultBase
    }
    return result
}

func countOccurences(list: [Int], countMe:Int) -> (occurences: Int, msg: String) {
    var count = 0
    for num in list {
        if (num == countMe) {
            count+=1
        }
    }
    if (count > 0) {
        let isPlural = count == 1 ? "" : "s"
        return (count, "\(countMe) appears \(count) time\(isPlural) on the list.")
    } else {
        return (count, "\(countMe) is not on the list")
    }
}

func rectCharStroke(n: Int, ch: String = "*") {
    if (n <= 2) {
        for _ in 1...n {
            for _ in 1...n {
                print(ch)
            }
        }
    } else {
        for x in 1...n-1 {
            for y in 1...n {
                if (x == 1 || x == n-1) {
                    print(ch, terminator: "")
                } else {
                    if (y == 1 || y == n) {
                        print(ch, terminator: "")
                    } else {
                        print(" ", terminator: "")
                    }
                }
            }
            print("\n")
        }
    }
}

func sumNPowers(num: Int, power: Int) -> Double {
    var sumResult = 0
    for x in 1...num {
        var powerResult = 1
        for _ in 1...power {
            powerResult *= x
        }
        sumResult+=powerResult
    }
    return Double(sumResult)
}

func triangleNumbersSquared(num: Int) -> Double {
    var result = 0
    for base in 1...num {
        result += base
    }
    return Double(result * result)
}

func sumOfCubes(num: Int) -> Double {
    var sumResult = 0
    for x in 1...num {
        var powerResult = 1
        for _ in 1...3 {
            powerResult *= x
        }
        sumResult += powerResult
    }
    return Double(sumResult)
}

func sort0to100() {
    var numberString : [String] = []
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .spellOut
    for num in 0...100 {
        numberString.append(String(numberFormatter.string(from: NSNumber(value: num))!.capitalized))
    }
    for n in numberString.sorted() {
        print(n)
    }
}
