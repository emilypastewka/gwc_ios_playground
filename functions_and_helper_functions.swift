//
//  functions_and_helper_functions.swift
//  
//
//  Created by Emily Bailey on 5/17/17.
//
//

import Foundation

// Create variables
let classArray = ["Physics","Math","English","CompSci","Government","Statistics","Chemistry","History"]
let studentArray = ["Ashley","Bob","Cat","Dan","Eva","Frank","George","Hal"]
let nPeriods: Int! = classArray.count
let nStudents: Int! = studentArray.count

// Check that we have the right number of students and classesShifted
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

// Call function
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

// Call function
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

// Call function
nextPeriodWithException(period: 1, exceptionStudent: "Bob", exceptionClass: "Math")


// If Eva doesn't take Physics, when does she have a free period?
nextPeriodWithException(period: 5, exceptionStudent: "Eva", exceptionClass: "Physics")

// Can you write a function to figure that out?
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

// Call function
whichPeriodIsFree(exceptionStudent: "Eva", exceptionClass: "Physics")





