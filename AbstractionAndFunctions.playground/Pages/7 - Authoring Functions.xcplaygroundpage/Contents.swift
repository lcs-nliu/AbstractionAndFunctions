import Foundation

/*:
# Authoring Functions
 
 Refer to this [list of formulas for various geometric figures](https://www.eqao.com/en/assessments/grade-9-math/assessment-docs/g9-formula-sheet-academic.pdf) (from the Grade 9 EQAO Mathematics assessment).
 
 Select eight formulas using this criteria:
 
 * two perimeter formulas
 * two area formulas
 * two surface area formulas
 * two volume formulas
 * at least three of your formulas must involve a power
 * at least two of your formulas must involve a fraction
 * at least three of your formulas must use 𝝿
 
 Then, on this page, author the:

 * function definitions
 * appropriate documentation (as described on [page 6](@previous))
 * make good choices for function names, argument labels, and parameter names
 * test your functions by invoking them a few times to be sure they provide correct results
 
 Remember to *commit* and *push* your work regularly – at a minimum after defining each function.
 
 */
// Begin your work here...
// pi: 3, fraction: 2, power: 3, area: 1, volume: 2, surface area: 2, perimeter:2

/// Find the volume of a cylinder
/// - Parameters:
///   - radius: radius of the cylinder
///   - height: height of the cylinder
/// - Returns: the volume of the cyclinder

func volumeCylinder(radius: Double, height: Double) -> Double? {
    // Ensure that we have reasonable values
       guard radius > 0, height > 0 else {
           // we have one or more bad inputs, so return a nill value
           return nil
       }
    // we have reasonable values so return the area
    return Double.pi * height * pow(radius, 2.0)
}


/// Find the surface area of a sphere
/// - Parameter radius: radius of the sphere
/// - Returns: the surface area of the sphere
func surfaceAreaSphere(radius: Double) -> Double? {
    // Ensure that we have reasonable values
       guard radius > 0 else {
           // we have one or more bad inputs, so return a nil value
           return nil
       }
    // we have reasonable values so return the area
    return 4 * Double.pi * pow(radius, 2.0)
}


/// Find the volume of a sphere
/// - Parameter radius: the radius of the sphere
/// - Returns: the volume of the sphere
func volumeSphere(radius: Double) -> Double? {
    // Ensure that we have reasonable values
       guard radius > 0 else {
           // we have one or more bad inputs, so return a nil value
           return nil
       }
    // we have reasonable values so return the area
    return 4/3 * Double.pi * pow(radius, 3.0)
}



/// Find the area of a trapezoid
/// - Parameters:
///   - a: the shorter base length
///   - b: the longer base length
///   - height: the height of the trapezoid
/// - Returns: the area of the trapezoid

func areaTrapezoid(shorterBase a: Double, longerBase b: Double, height: Double) -> Double? {
    // Ensure that we have reasonable values
       guard a > 0, b > 0, height > 0 else {
           // we have one or more bad inputs, so return a nil value
           return nil
       }
    // we have reasonable values so return the area
    return 1/2 * (a+b) * height
}


/// Find the perimeter of a triangle
/// - Parameters:
///   - a: first side length
///   - b: second side length
///   - c: third side length
/// - Returns: the perimeter of a triangle
func perimeterTriangle(sideLengthA a: Double, sideLengthB b:Double,sideLengthC c: Double) -> Double? { // Ensure that we have reasonable values
       guard a > 0, b > 0, c > 0 else {
           // we have one or more bad inputs, so return a nil value
           return nil
       }
    // we have reasonable values so return the area
    return a+b+c
}


/// Find the perimeter of a rectangle
/// - Parameters:
///   - length: the length of the rectangle
///   - width: the width of the rectangle
/// - Returns: the perimeter of the rectangle
func perimeterRectangle(length l: Double, width w: Double) -> Double? {
    // Ensure that we have reasonable values
       guard l > 0, w > 0 else {
           // we have one or more bad inputs, so return a nil value
           return nil
       }
    // we have reasonable values so return the area
    return 2*(l+w)
}


/// Find the surface area of the pyramid
/// - Parameters:
///   - b: base length of the pyramid
///   - s: side length of the pyramid
/// - Returns: the surface area of the pyramid
func surfaceAreaPyramid(base b: Double, slantHeight s: Double) -> Double? {
    // Ensure that we have reasonable values
       guard b > 0, s > 0 else {
           // we have one or more bad inputs, so return a nil value
           return nil
       }
    // we have reasonable values so return the area
return pow (b,2) + 2*b*s
}


/// Find the area of parallelogram
/// - Parameters:
///   - b: base length of the parallelogram
///   - h: height of the parallelogram
func areaParallelogram(baseLength b: Double, height h: Double) -> Double? {
    // Ensure that we have reasonable values
       guard b > 0, h > 0 else {
           // we have one or more bad inputs, so return a nil value
           return nil
       }
    // we have reasonable values so return the area
    return b*h
}

// TEST CASES - all results are rounded to one decimal place

// Volume Sphere
// Test case #1: radius: 5, return: 523.60
volumeSphere(radius: 5.0)
// Test case #2: radius: -10, return: nil
volumeSphere(radius: -10)
// Test case #3: radius: 19.25, return: 29880.01
volumeSphere(radius: 19.25)

// Volume Cylinder
// Test case #1: radius: 3, height: 2, return: 56.55
volumeCylinder(radius: 3.0, height: 2.0)
// Test case #2: radius: -5, height: 6, return: nil
volumeCylinder(radius: -5.0, height: 6.0)
// Test case #3: radius: 1.5 , height: 7, return: 49.48
volumeCylinder(radius: 1.5, height: 7.0 )

// Area trapezoid
// Test case #1: shorterBase: 3, longerBase: 5, height: 2, return: 8.00
areaTrapezoid(shorterBase: 3.0, longerBase: 5.0, height: 2)
// Test case #2: shorterBase: -3, longerBase: 5, height: -2, return: nil
areaTrapezoid(shorterBase: -3, longerBase: 5, height: -2)
// Test case #3: shorterBase: 1.37, longerBase: 2.8, height: 5, return: 10.43
areaTrapezoid(shorterBase: 1.37, longerBase: 2.8, height: 5)

// Surface Area Sphere
// Test case #1: radius: 5, result: 314.16
surfaceAreaSphere(radius:5)
// Test case #2: radius: -100, result: nil
surfaceAreaSphere(radius: -100)
// Test case #3: radius: 1.02, result: 13.07
surfaceAreaSphere(radius: 1.02)

// Perimeter Rectangle
// Test case #1: width: 5, length: 10, result: 31.60
perimeterRectangle(length: 10.6, width: 5.2)
// Test case #2: width: -300, length: 1, result: nil
perimeterRectangle(length: 1, width: -300)
// Test case #3: width: 50, length: 20, result: 140.00
perimeterRectangle(length: 20, width: 50)

// Perimeter Triangle
// Test case #1: sideLengthA: 5, sideLengthB: 5, sideLengthC: 5, result: 15.00
perimeterTriangle(sideLengthA: 5, sideLengthB: 5, sideLengthC: 5)
// Test case #2: sideLengthA: -17, sideLengthB: 3, sideLengthC: 3, result: nil
perimeterTriangle(sideLengthA: -17, sideLengthB: 3, sideLengthC: 3)
// Test case #3: sideLengthA: 6, sideLengthB: 8, sideLengthC: 10, result: 24.00
perimeterTriangle(sideLengthA: 6, sideLengthB: 8, sideLengthC: 10)

// Surface Area Pyramid
// Test case #1: base: 5, slantHeight: 10, result: 125.00
surfaceAreaPyramid(base: 5, slantHeight: 10)
// Test case #1: base: 3.41, slantHeight: 8.72, result: 71.10
surfaceAreaPyramid(base: 3.41, slantHeight: 8.72)
// Test case #1: base: 0, slantHeight: 10, result: nil
surfaceAreaPyramid(base: 0, slantHeight: 10)

// Area Parallelogram
// Test case #1: baseLength: 5, height: 10, result: 50.00
areaParallelogram(baseLength: 5, height: 10)
// Test case #2: baseLength: 9.81, height: 61.33, result: 601.65
areaParallelogram(baseLength: 9.81, height: 61.33)
// Test case #3: baseLength: -19, height: 36, result: nil
areaParallelogram(baseLength: -19, height: 36)
/*:
 [Previous: Writing Documentation](@previous) | Page 7
 */
