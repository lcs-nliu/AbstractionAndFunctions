/*:
 # Area Example - Rectangle
 
 Say that we wanted to calculate the area of a rectangle. Mathematically:
 
 ![areaRectangle](rectangle_area.png)
 
 Of course, this is a very simple formula to write code for – but – any time we need to calculate the area – without a function – we risk making a typo or some other error.
 
 Better to write the function *once* – then be able to use it whenever we want. That's abstraction!
 
 So, here is the *definition* of the function:
 
 */

/// Finds the area of a rectangle
/// - Parameter length: length of rectangle
/// - Parameter width: width of rectangle
/// - Returns: area of the rectangle
func areaOfRectangle(length: Double, width: Double) -> Double? {
    
    // Ensure that we have reasonable values
    guard length > 0, width > 0 else {
        // we have one or more bad inputs, so return a nill value
        return nil
    }
    // we have reasonable values so return the area
    return length * width
    
}

/*:
 
 Here is how we *invoke* or use the function. Try running this playground to see results:
 
 */

// Invoke the function... to find the area of a rectangle that is 10 units long and 5 units wide
// Test case #1: length: 10, width: 5, result: 50
let result = areaOfRectangle(length: 10, width: 5)

// Test case #2: length: 10.5, width: 10, result: 105
areaOfRectangle(length: 10.5, width: 10)

// Test case #3: length: -5, width: 25, result: nil
areaOfRectangle(length: -5, width: 25)

// Test case #4: length: 5, width: -25, result: nil
areaOfRectangle(length: 5, width: -25)

// Report the results
print("The area of that rectangle was \(result) square units.")


/*:
 
 Try option clicking on function name, where it is invoked on line 33:
 
 If you do not see something like the following, quit and re-open Xcode, then try again.
 
 ![functionDescription](function-description.png)
 
 When we option-click on a function that has been documented a certain way, we get useful information about how to use that function.
 
 We'll learn how to write documentation properly on the next page.
 
 [Previous: About Functions](@previous) | Page 5 | [Next: Writing Documentation](@next)
 
 */


