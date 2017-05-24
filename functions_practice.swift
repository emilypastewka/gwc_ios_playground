//
//  functions_practice.swift
//  
//
//  Created by Emily Bailey on 5/24/17.
//
//


// This practice worksheet builds up your knowledge of writing functions. 
// You can use  https://iswift.org/playground to run the code you write to check that it works. Remember to run ALL of the lines of code that come before your function, in order - you must run the import lind, load your variables, and everything in order!
// Google any questions you have as you work on this! stackoverflow.com is a particularly great site.
// There are some hints at the bottom of this document
// Ask each other for help too, write stuff on the board, talk through where you get stuck.
// Feel free to email me if you get really stuck on anything! emilybailey12@gmail.com or emilyb@uber.com
// And yes - these problems are pretty hard! But I know you guys can do them!

// Overview
// In this workflow, we're thinking about a school and trying to figure out when students go to their classes.
// IMPORTANT: This is a school with 1-on-1 teaching only, so students go to class alone! Only one student per class per period. 
// The classArray given here is for period 1. So in period 1, Ashley is in Physics. In period 2, each student goes to the next class - so Ashley is in Math. The last student on the list cycles back up. So in period 1, Hal is in History. In period 2, Hal is in Physics.


// Import necessary module
import Foundation


// Create variables that store data
let classArray = ["Physics", "Math", "English", "CompSci", "Government", "Statistics", "Chemistry", "History"]
let studentArray = ["Ashley", "Bob", "Cat", "Dan", "Eva", "Frank", "George", "Hal"]
let nPeriods: Int! = classArray.count
let nStudents: Int! = studentArray.count


// Check that we have the right number of students and classes (clean data is key!)
nPeriods==nStudents


// 1. Write a function to tell me what class any given student is in, assuming that the ordering of students and classes in the original arrays is current (we did this in class last week)

func findClassForStudent(studentToFind: String) -> String {
    var classStudentIsIn: String = ""
    for i in 1...studentArray.count {
        if studentArray[i-1] == studentToFind {
            classStudentIsIn = classArray[i-1]
        }
    }
    return classStudentIsIn
}

// Checkpoint: call function
findClassForStudent(studentToFind: "Ashley")
/* Expected result:
 [String] = "Physics"
*/
// You can call the function for as many students as you want to check that it works


// 2. Write a function that switches us to another period, i.e. shifts the array from period 1 to period 1+x (so if you enter shiftPeriods: 1, you are going from period 1 to period 2; if you enter shiftPeriods: 7, you are going from period 1 to period 8)

func shiftClasses(shiftPeriods: Int) -> [String] {
    // Write your code in here!
}

// Checkpoint: call function
shiftClasses(shiftPeriods: 1)
/* Expected result:
[String] = 8 values {
    [0] = "Math"
    [1] = "English"
    [2] = "CompSci"
    [3] = "Government"
    [4] = "Statistics"
    [5] = "Chemistry"
    [6] = "History"
    [7] = "Physics"
 }
*/


// 3. Write a function that tells you what class each student is in for a given period (inputs can be 1-8). The output should be a new array of strings saying "Ashley will be in classX", e.g. You will want to use the function you wrote in #2 inside of this function to help you out.

func studentsInClassesForPeriod(period: Int) -> [String] {
    // Write your code in here!
}

// Checkpoint: call function
studentsInClassesForPeriod(period: 1)
/* Expected result:
[String] = 8 values {
    [0] = "Ashley is going to Physics"
    [1] = "Bob is going to Math"
    [2] = "Cat is going to English"
    [3] = "Dan is going to CompSci"
    [4] = "Eva is going to Government"
    [5] = "Frank is going to Statistics"
    [6] = "George is going to Chemistry"
    [7] = "Hal is going to History"
}
*/


// 4(A). Sometimes one student is excepted from a certain class. For instance, maybe Bob just hates Math and has somehow found a way to get out of it. How will the schedule be printed if Bob has a free period instead of going to Math?

func nextPeriodWithException(period: Int, exceptionStudent: String, exceptionClass: String) -> [String] {
    // Write your code in here!
}

// Checkpoint: call function
nextPeriodWithException(period: 1, exceptionStudent: "Bob", exceptionClass: "Math")
/* Expected result:
 [String] = 8 values {
 [0] = "Ashley is going to Physics"
 [1] = "Bob has a free period"
 [2] = "Cat is going to English"
 [3] = "Dan is going to CompSci"
 [4] = "Eva is going to Government"
 [5] = "Frank is going to Statistics"
 [6] = "George is going to Chemistry"
 [7] = "Hal is going to History"
 }
*/


// 4(B). If Eva doesn't take Physics, when does she have a free period?


// 4(C).I wrote a for loop to answer that question, but it has a bug. Debug this to find the right answer

for i in 1...nPeriods {
    var period: String = String(i)
    var nextPeriodWithExceptionArray = nextPeriodWithException(period: i-1, exceptionStudent: "Eva", exceptionClass: "Physics")
    print("In period " + period + " " + nextPeriodWithExceptionArray[i])
}

// Checkpoint: run for loop
/* Expected result:
 In period 1 Please input a period between 1 and 8
 In period 2 Bob is going to Math
 In period 3 Cat is going to CompSci
 In period 4 Dan is going to Statistics
 In period 5 Eva is going to History
 In period 6 Frank is going to Math
 In period 7 George is going to CompSci
 In period 8 Hal is going to Statistics
*/



// HINTS

// 2.
// Break this down into steps. First, you know you need to write a loop, because you are using each component of the array.
// Also, remember that your  array index starts at 0. So when you write your for loop, it can't just go from 1-8, it needs to somehow give you 0-7:
    // you could create a variable called "nPeriodsMinusOne" and set it equal to "nPeriods-1," then your loop could be "for i in 0...nPeriodsMinusOne"
    // or your loop can be "for i 1...nPeriods", and then inside the loop you can say i = i-1 or you can just always use i-1 to access array elements instead of just i (classArray[i-1] instead of classArray[i], e.g.)
// Don't forget to use the input (shiftPeriods) - it's there for a reason!
// You will be returning an array, so make sure you create an array that you can return. You can start by creating an empty array like this:
    // var myArray: [String] = []
// Then you can add new items to the array using .append("whatever you want to add"). You can read about this more online. It will look like:
    // myArray.append("some string") or myArray.append(somevariable)
// Don't forget that if you shift forward by 1, the last class has nowhere to go! So the 8th class has to become the 1st class. How can you use your input variables plus a little bit of math to do this? We did something similar in class last week.

// 3.
// Use your shiftClasses function that you wrote in #2 to figure out who was what class in each period.
// Remember there are only 8 periods, so you can only use 1-8 as period inputs
// The hints from #2 will probably be helpful here too

// 4(A).
// Remember that if a student has an exception for one class, that exception will only show up 1 out of 8 times (i.e. if Bob has a free period instead of Math, he gets a free period during period 1, but he has all of his regular classes for every other period.

// 4(B).
// Call the function you wrote in part A. Does this answer your question? Did you input the right parameters?

// 4(C).
// Is i the correct index?


