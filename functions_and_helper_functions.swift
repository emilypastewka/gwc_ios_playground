//
//  functions_and_helper_functions.swift
//  
//
//  Created by Emily Bailey on 5/17/17.
//
//

import Foundation

// In this workflow, we're thinking about a school and trying to figure out when students go to their classes.
// IMPORTANT: This is a school with 1-on-1 teaching only, so students go to class alone! Only one student per class per period

// Create variables
let classArray = ["Physics","Math","English","CompSci","Government","Statistics","Chemistry","History"]
let studentArray = ["Ashley","Bob","Cat","Dan","Eva","Frank","George","Hal"]
let nPeriods: Int! = classArray.count
let nStudents: Int! = studentArray.count

// Check that we have the right number of students and classes
nPeriods==nStudents

// Helper function
func shiftClasses(shiftPeriods: Int) -> [String] {
    var classesShifted: [String] = []
    for i in 1...nPeriods {
        if(shiftPeriods == 0) {
            classesShifted = classArray
        } else if(i-1+shiftPeriods) >= nPeriods {
            classesShifted.append(classArray[i-1+shiftPeriods-nPeriods])
        } else {
            classesShifted.append(classArray[i-1+shiftPeriods])
        }
    }
    return classesShifted
}

// Checkpoint: call function
shiftClasses(shiftPeriods: 1)


// Do work function
func nextPeriod(period: Int) -> [String] {
    let shiftPeriods = period-1
    var nextPeriodArray: [String] = []
    if(period < 1 || period > 8) {
        nextPeriodArray.append("Please input a period between 1 and 8")
    } else {
        let classesShiftedArray: [String] = shiftClasses(shiftPeriods: shiftPeriods)
        for i in 1...nPeriods {
            nextPeriodArray.append(studentArray[i-1] + " is going to " + classesShiftedArray[i-1])
        }
    }
    return nextPeriodArray
}

// Checkpoint: call function
nextPeriod(period: 1)


// Modified do work function
func nextPeriodWithException(period: Int, exceptionStudent: String, exceptionClass: String) -> [String] {
    let shiftPeriods = period-1
    var nextPeriodWithExceptionArray: [String] = []
    if(period < 1 || period > 8) {
        nextPeriodArray.append("Please input a period between 1 and 8")
    } else {
        let classesShiftedArray: [String] = shiftClasses(shiftPeriods: shiftPeriods)
        for i in 1...nPeriods {
            if(studentArray[i-1] == exceptionStudent && classesShiftedArray[i-1] == exceptionClass) {
                nextPeriodWithExceptionArray.append(studentArray[i-1] + " has a free period")
            } else {
                nextPeriodWithExceptionArray.append(studentArray[i-1] + " is going to " + classesShiftedArray[i-1])
            }
        }
    }
    return nextPeriodWithExceptionArray
}

// Checkpoint: call function
nextPeriodWithException(period: 1, exceptionStudent: "Bob", exceptionClass: "Math")



// CHALLENGE

// If Eva doesn't take Physics, when does she have a free period?
nextPeriodWithException(period: 5, exceptionStudent: "Eva", exceptionClass: "Physics")

// Can you write a loop to figure that out?
for i in 1...nPeriods {
    var nextPeriodWithExceptionArray = nextPeriodWithException(period: i, exceptionStudent: "Eva", exceptionClass: "Physics")
    print("In period " + String(i) + " " + nextPeriodWithExceptionArray[4])
}

// Can you write a function using that for loop to return just the period she's free?
func whichPeriodIsFree(exceptionStudent: String, exceptionClass: String) -> Int {
    var returnPeriod: Int = 0
    for i in 1...nPeriods {
        var nextPeriodWithExceptionArray = nextPeriodWithException(period: i, exceptionStudent: exceptionStudent, exceptionClass: exceptionClass)
        for i in 1...nPeriods {
            var periodWithException = nextPeriodWithExceptionArray[i-1]
            if periodWithException.range(of: "free") != nil {
                returnPeriod = i
            }
        }
    }
    return returnPeriod
}

// Checkpoint: call function
whichPeriodIsFree(exceptionStudent: "Eva", exceptionClass: "Physics")

