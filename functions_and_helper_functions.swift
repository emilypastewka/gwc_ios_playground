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
func shiftClasses(period: Int) -> [String] {
    var classesShifted: [String] = []
    for i in 1...nPeriods {
        if(i-1+period) >= nPeriods {
            classesShifted.append(classArray[i-1+period-nPeriods])
        } else {
            classesShifted.append(classArray[i-1+period])
        }
    }
    return classesShifted
}

// Call function
shiftClasses(period: 1)


// Do work function
func nextPeriod(period: Int) -> [String] {
    var nextPeriod: [String] = []
    let classesShifted: [String] = shiftClasses(period: period)
    for i in 1...nPeriods {
        nextPeriod.append(studentArray[i-1] + " is going to " + classesShifted[i-1])
    }
    return nextPeriod
}

// Call function
nextPeriod(period: 1)


// Modified do work function
func nextPeriodWithException(period: Int, exceptionStudent: String, exceptionClass: String) -> [String] {
    var nextPeriodWithException: [String] = []
    let classesShifted: [String] = shiftClasses(period: period)
    for i in 1...nPeriods {
        if(studentArray[i-1] == exceptionStudent && classesShifted[i-1] == exceptionClass) {
            nextPeriodWithException.append(studentArray[i-1] + " has a free period")
        } else {
            nextPeriodWithException.append(studentArray[i-1] + " is going to " + classesShifted[i-1])
        }
    }
    return nextPeriodWithException
}

// Call function
nextPeriodWithException(period: 1, exceptionStudent: "Dan", exceptionClass: "Government")

// If Eva doesn't take Physics, when does she have a free period?
nextPeriodWithException(period: 4, exceptionStudent: "Eva", exceptionClass: "Physics")








