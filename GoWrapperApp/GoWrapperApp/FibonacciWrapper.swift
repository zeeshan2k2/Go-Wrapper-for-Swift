//
//  FibonacciWrapper.swift
//  GoWrapperApp
//
//  Created by Zeeshan Waheed on 21/10/2024.
//


import Foundation

func computeFibonacci(upTo n: Int) -> [Int] {
    // Load the shared library
    let handle = dlopen("/Users/zeeshanwaheed/Desktop/Swift/Go Wrapper for Swift/libfibonacci.so", RTLD_NOW) // Update this to the correct path
    
    guard handle != nil else {
        print("Failed to load library")
        return []
    }
    
    // Get the Fibonacci function
    let fibonacciFunction = dlsym(handle, "Fibonacci")
    typealias FibonacciFunctionType = @convention(c) (Int32) -> UnsafeMutablePointer<Int32>
    let fibonacci = unsafeBitCast(fibonacciFunction, to: FibonacciFunctionType.self)
    
    // Call the Fibonacci function
    let fibonacciResultPointer = fibonacci(Int32(n))
    
    // Convert C array to Swift array safely
    var result: [Int] = []
    for i in 0..<n {
        result.append(Int(fibonacciResultPointer[i]))
    }
    
    // Free the memory allocated in C
    free(fibonacciResultPointer)
    
    // Close the dynamic library
    dlclose(handle)
    
    return result
}
