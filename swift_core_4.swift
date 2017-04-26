// Run on https://iswift.org/playground


// 1. Variables

// create a variable called x and set it equal to 1. Print it. Change that variable to be equal to 2. Print it again.
var x = 1
print(x)
x = x+1
print(x)

// create a constant called y and set it equal to 5. Print it. Can you change that constant?
let y = 5
print(y)

// create a variable that is an array of the names of the planets
var planets = ["Mercury","Venus","Earth","Mars","Jupiter","Saturn","Uranus","Neptune"]
print(planets)


// 2. Loops

// write a for loop to print your variable from part 1 three times
for i in 1...3 {
    print(x)
}

// print the planet names from your array one by one
for planet in planets {
    print(planet)
}


// 3. Conditionals

// write a conditional statement that only prints x if x is greater than 1
if x>1 {
    print(x)
}

// write a conditional statement that prints "x is even" if x is even, and "x is odd" if x is odd (there are multiple ways to do this!)
if x%2==0 {
    print("x is even")
} else {
    print("x is odd")
}


// 4. Functions

// write a function that prints the value of a number. Test your function using any number
func myPrint(myNumber: Int) {
    print(myNumber)
}
myPrint(myNumber: 1)

// write a function that adds 1 the the value of whatever integer you pass in. Test your function by calling it on any number, then set a variable equal to that call and print the result.
func addOne(myNumber: Int) -> Int {
    return myNumber+1
}

var newNumber = addOne(myNumber: 1)
print(newNumber)


