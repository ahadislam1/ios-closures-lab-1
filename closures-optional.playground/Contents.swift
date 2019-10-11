import UIKit

//Write a function named `applyKTimes` that takes an integer `K` and a closure and calls the closure K times. The closure will not take any parameters and will not have a return value.

func applyKTimes(_ K: Int, _ closure: () -> () ) {
    for _ in 1...K {
        closure()
    }
}

//applyKTimes(4) {
//    print("Hello Closures!")
//}

//Use `filter` to create an array called `multiples` that contains all the multiples of 3 from `numbers` and then print it.


let numbers = [1, 2, 3, 4, 6, 8, 9, 3, 12, 11]
let multiples = numbers.filter({$0 % 3 == 0} )

print(numbers)
print(multiples)

//Find the largest number from `numbers` and then print it. Use `reduce` to solve this exercise.

let numbers1 = [4, 7, 1, 9, 6, 5, 6, 9]
print(numbers1.reduce(0) { $0 > $1 ? $0 : $1 })

//Join all the strings from `strings` into one using `reduce`. Add spaces in between strings. Print your result.

let strings = ["We", "Heart", "Swift"]
var string1 = String()

//strings.reduce(" ") { (x, y) -> Result in
//    x + " " + y
//}
var genres = ["towel", "42"]
var jointGenres : String = genres.reduce("", { $0 == "" ? $1 : $0 + "," + $1 })

print(strings.reduce("", { $0 == "" ? $1 : $0 + " " + $1}))

